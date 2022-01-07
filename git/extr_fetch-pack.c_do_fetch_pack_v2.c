
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {int dummy; } ;
struct repository {int dummy; } ;
struct ref {int dummy; } ;
struct packet_reader {int use_sideband; char* me; } ;
struct oidset {int dummy; } ;
struct oid_array {int dummy; } ;
struct fetch_pack_args {int deepen; int negotiation_tips; int no_dependents; int deepen_not; int deepen_since; int depth; } ;
struct fetch_negotiator {int (* release ) (struct fetch_negotiator*) ;} ;
typedef enum fetch_state { ____Placeholder_fetch_state } fetch_state ;


 int ALLOW_REACHABLE_SHA1 ;





 int INITIAL_FLUSH ;
 struct oidset OIDSET_INIT ;
 int PACKET_READ_CHOMP_NEWLINE ;
 int PACKET_READ_DIE_ON_ERR_PACKET ;
 int QSORT (struct ref**,int,int ) ;
 int _ (char*) ;
 int allow_unadvertised_object_request ;
 int cmp_ref_by_name ;
 struct ref* copy_ref_list (struct ref const*) ;
 int die (int ) ;
 int everything_local (struct fetch_pack_args*,struct ref**) ;
 int fetch_negotiator_init (struct repository*,struct fetch_negotiator*) ;
 int filter_refs (struct fetch_pack_args*,struct ref**,struct ref**,int) ;
 int for_each_cached_alternate (struct fetch_negotiator*,int ) ;
 int get_pack (struct fetch_pack_args*,int*,char**,struct ref**,int) ;
 scalar_t__ git_env_bool (char*,int) ;
 int insert_one_alternate_object ;
 int mark_complete_and_common_ref (struct fetch_negotiator*,struct fetch_pack_args*,struct ref**) ;
 int mark_tips (struct fetch_negotiator*,int ) ;
 int oidset_clear (struct oidset*) ;
 int packet_reader_init (struct packet_reader*,int,int *,int ,int) ;
 int process_acks (struct fetch_negotiator*,struct packet_reader*,struct oidset*) ;
 int process_section_header (struct packet_reader*,char*,int) ;
 int receive_shallow_info (struct fetch_pack_args*,struct packet_reader*,struct oid_array*,struct shallow_info*) ;
 int receive_wanted_refs (struct packet_reader*,struct ref**,int) ;
 int ref_compare_name ;
 int send_fetch_request (struct fetch_negotiator*,int,struct fetch_pack_args*,struct ref*,struct oidset*,int*,int*,int) ;
 scalar_t__ server_supports_feature (char*,char*,int ) ;
 int sort_ref_list (struct ref**,int ) ;
 int stub1 (struct fetch_negotiator*) ;
 struct repository* the_repository ;
 int trace2_region_enter (char*,char*,struct repository*) ;
 int trace2_region_leave (char*,char*,struct repository*) ;
 int use_sideband ;

__attribute__((used)) static struct ref *do_fetch_pack_v2(struct fetch_pack_args *args,
        int fd[2],
        const struct ref *orig_ref,
        struct ref **sought, int nr_sought,
        struct oid_array *shallows,
        struct shallow_info *si,
        char **pack_lockfile)
{
 struct repository *r = the_repository;
 struct ref *ref = copy_ref_list(orig_ref);
 enum fetch_state state = 132;
 struct oidset common = OIDSET_INIT;
 struct packet_reader reader;
 int in_vain = 0, negotiation_started = 0;
 int haves_to_send = INITIAL_FLUSH;
 struct fetch_negotiator negotiator;
 fetch_negotiator_init(r, &negotiator);
 packet_reader_init(&reader, fd[0], ((void*)0), 0,
      PACKET_READ_CHOMP_NEWLINE |
      PACKET_READ_DIE_ON_ERR_PACKET);
 if (git_env_bool("GIT_TEST_SIDEBAND_ALL", 1) &&
     server_supports_feature("fetch", "sideband-all", 0)) {
  reader.use_sideband = 1;
  reader.me = "fetch-pack";
 }

 while (state != 131) {
  switch (state) {
  case 132:
   sort_ref_list(&ref, ref_compare_name);
   QSORT(sought, nr_sought, cmp_ref_by_name);


   allow_unadvertised_object_request |= ALLOW_REACHABLE_SHA1;
   use_sideband = 2;
   if (args->depth > 0 || args->deepen_since || args->deepen_not)
    args->deepen = 1;


   if (!args->no_dependents) {
    mark_complete_and_common_ref(&negotiator, args, &ref);
    filter_refs(args, &ref, sought, nr_sought);
    if (everything_local(args, &ref))
     state = 131;
    else
     state = 128;

    mark_tips(&negotiator, args->negotiation_tips);
    for_each_cached_alternate(&negotiator,
         insert_one_alternate_object);
   } else {
    filter_refs(args, &ref, sought, nr_sought);
    state = 128;
   }
   break;
  case 128:
   if (!negotiation_started) {
    negotiation_started = 1;
    trace2_region_enter("fetch-pack",
          "negotiation_v2",
          the_repository);
   }
   if (send_fetch_request(&negotiator, fd[1], args, ref,
            &common,
            &haves_to_send, &in_vain,
            reader.use_sideband))
    state = 130;
   else
    state = 129;
   break;
  case 129:

   switch (process_acks(&negotiator, &reader, &common)) {
   case 2:
    state = 130;
    break;
   case 1:
    in_vain = 0;

   default:
    state = 128;
    break;
   }
   break;
  case 130:
   trace2_region_leave("fetch-pack",
         "negotiation_v2",
         the_repository);

   if (process_section_header(&reader, "shallow-info", 1))
    receive_shallow_info(args, &reader, shallows, si);

   if (process_section_header(&reader, "wanted-refs", 1))
    receive_wanted_refs(&reader, sought, nr_sought);


   process_section_header(&reader, "packfile", 0);
   if (get_pack(args, fd, pack_lockfile, sought, nr_sought))
    die(_("git fetch-pack: fetch failed."));

   state = 131;
   break;
  case 131:
   continue;
  }
 }

 negotiator.release(&negotiator);
 oidset_clear(&common);
 return ref;
}
