
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shallow_info {int dummy; } ;
struct ref {int dummy; } ;
struct oid_array {scalar_t__ nr; } ;
struct TYPE_2__ {int choice; } ;
struct fetch_pack_args {int connectivity_checked; scalar_t__ deepen; int cloning; TYPE_1__ filter_options; scalar_t__ no_dependents; } ;
struct check_connected_options {int is_deepening_fetch; int shallow_file; } ;
typedef int si ;
typedef enum protocol_version { ____Placeholder_protocol_version } protocol_version ;


 int BUG (char*) ;
 struct check_connected_options CHECK_CONNECTED_INIT ;
 struct oid_array OID_ARRAY_INIT ;
 int _ (char*) ;
 int alternate_shallow_file ;
 scalar_t__ check_connected (int ,struct ref**,struct check_connected_options*) ;
 int clear_shallow_info (struct shallow_info*) ;
 int die (int ) ;
 struct ref* do_fetch_pack (struct fetch_pack_args*,int*,struct ref const*,struct ref**,int,struct shallow_info*,char**) ;
 struct ref* do_fetch_pack_v2 (struct fetch_pack_args*,int*,struct ref const*,struct ref**,int,struct oid_array*,struct shallow_info*,char**) ;
 int error (int ) ;
 int fetch_pack_setup () ;
 int free_refs (struct ref*) ;
 int iterate_ref_map ;
 int memset (struct shallow_info*,int ,int) ;
 int oid_array_clear (struct oid_array*) ;
 int packet_flush (int) ;
 int parse_list_objects_filter (TYPE_1__*,char*) ;
 int prepare_shallow_info (struct shallow_info*,struct oid_array*) ;
 int protocol_v2 ;
 int remove_duplicates_in_refs (struct ref**,int) ;
 int reprepare_packed_git (int ) ;
 int rollback_lock_file (int *) ;
 int shallow_lock ;
 int the_repository ;
 int update_shallow (struct fetch_pack_args*,struct ref**,int,struct shallow_info*) ;

struct ref *fetch_pack(struct fetch_pack_args *args,
         int fd[],
         const struct ref *ref,
         struct ref **sought, int nr_sought,
         struct oid_array *shallow,
         char **pack_lockfile,
         enum protocol_version version)
{
 struct ref *ref_cpy;
 struct shallow_info si;
 struct oid_array shallows_scratch = OID_ARRAY_INIT;

 fetch_pack_setup();
 if (nr_sought)
  nr_sought = remove_duplicates_in_refs(sought, nr_sought);

 if (args->no_dependents && !args->filter_options.choice) {
  parse_list_objects_filter(&args->filter_options, "blob:none");
 }

 if (version != protocol_v2 && !ref) {
  packet_flush(fd[1]);
  die(_("no matching remote head"));
 }
 if (version == protocol_v2) {
  if (shallow->nr)
   BUG("Protocol V2 does not provide shallows at this point in the fetch");
  memset(&si, 0, sizeof(si));
  ref_cpy = do_fetch_pack_v2(args, fd, ref, sought, nr_sought,
        &shallows_scratch, &si,
        pack_lockfile);
 } else {
  prepare_shallow_info(&si, shallow);
  ref_cpy = do_fetch_pack(args, fd, ref, sought, nr_sought,
     &si, pack_lockfile);
 }
 reprepare_packed_git(the_repository);

 if (!args->cloning && args->deepen) {
  struct check_connected_options opt = CHECK_CONNECTED_INIT;
  struct ref *iterator = ref_cpy;
  opt.shallow_file = alternate_shallow_file;
  if (args->deepen)
   opt.is_deepening_fetch = 1;
  if (check_connected(iterate_ref_map, &iterator, &opt)) {
   error(_("remote did not send all necessary objects"));
   free_refs(ref_cpy);
   ref_cpy = ((void*)0);
   rollback_lock_file(&shallow_lock);
   goto cleanup;
  }
  args->connectivity_checked = 1;
 }

 update_shallow(args, sought, nr_sought, &si);
cleanup:
 clear_shallow_info(&si);
 oid_array_clear(&shallows_scratch);
 return ref_cpy;
}
