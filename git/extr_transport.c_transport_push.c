
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct transport {TYPE_3__* remote; int url; TYPE_2__* vtable; int push_options; TYPE_1__* smart_options; int verbose; } ;
struct string_list {int dummy; } ;
struct repository {int dummy; } ;
struct refspec {int dummy; } ;
struct ref {int status; struct ref* next; int new_oid; } ;
struct oid_array {int dummy; } ;
struct argv_array {int dummy; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int (* push_refs ) (struct transport*,struct ref*,int) ;struct ref* (* get_refs_list ) (struct transport*,int,struct argv_array*) ;} ;
struct TYPE_6__ {scalar_t__ cas; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int MATCH_REFS_ALL ;
 int MATCH_REFS_FOLLOW_TAGS ;
 int MATCH_REFS_MIRROR ;
 int MATCH_REFS_NONE ;
 int MATCH_REFS_PRUNE ;
 struct oid_array OID_ARRAY_INIT ;
 int REF_STATUS_ATOMIC_PUSH_FAILED ;



 struct string_list STRING_LIST_INIT_DUP ;
 int TRANSPORT_PUSH_ALL ;
 int TRANSPORT_PUSH_ATOMIC ;
 int TRANSPORT_PUSH_DRY_RUN ;
 int TRANSPORT_PUSH_FOLLOW_TAGS ;
 int TRANSPORT_PUSH_FORCE ;
 int TRANSPORT_PUSH_MIRROR ;
 int TRANSPORT_PUSH_NO_HOOK ;
 int TRANSPORT_PUSH_PORCELAIN ;
 int TRANSPORT_PUSH_PRUNE ;
 int TRANSPORT_PUSH_SET_UPSTREAM ;
 int TRANSPORT_RECURSE_SUBMODULES_CHECK ;
 int TRANSPORT_RECURSE_SUBMODULES_ONLY ;
 int TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND ;
 int _ (char*) ;
 int apply_push_cas (scalar_t__,TYPE_3__*,struct ref*) ;
 int argv_array_clear (struct argv_array*) ;
 scalar_t__ check_push_refs (struct ref*,struct refspec*) ;
 int die (int ) ;
 int die_with_unpushed_submodules (struct string_list*) ;
 scalar_t__ find_unpushed_submodules (struct repository*,struct oid_array*,int ,struct string_list*) ;
 int fprintf (int ,char*) ;
 struct ref* get_local_heads () ;
 int is_bare_repository () ;
 int is_empty_cas (scalar_t__) ;
 int is_null_oid (int *) ;
 scalar_t__ match_push_refs (struct ref*,struct ref**,struct refspec*,int) ;
 int oid_array_append (struct oid_array*,int *) ;
 int oid_array_clear (struct oid_array*) ;
 int push_had_errors (struct ref*) ;
 int push_unpushed_submodules (struct repository*,struct oid_array*,TYPE_3__*,struct refspec*,int ,int) ;
 int puts (char*) ;
 int refspec_ref_prefixes (struct refspec*,struct argv_array*) ;
 scalar_t__ run_pre_push_hook (struct transport*,struct ref*) ;
 int set_ref_status_for_push (struct ref*,int,int) ;
 int set_upstreams (struct transport*,struct ref*,int) ;
 int stderr ;
 int string_list_clear (struct string_list*,int ) ;
 struct ref* stub1 (struct transport*,int,struct argv_array*) ;
 int stub2 (struct transport*,struct ref*,int) ;
 int trace2_region_enter (char*,char*,struct repository*) ;
 int trace2_region_leave (char*,char*,struct repository*) ;
 scalar_t__ transport_color_config () ;
 int transport_print_push_status (int ,struct ref*,int,int,unsigned int*) ;
 int transport_refs_pushed (struct ref*) ;
 int transport_update_tracking_ref (TYPE_3__*,struct ref*,int) ;

int transport_push(struct repository *r,
     struct transport *transport,
     struct refspec *rs, int flags,
     unsigned int *reject_reasons)
{
 *reject_reasons = 0;

 if (transport_color_config() < 0)
  return -1;

 if (transport->vtable->push_refs) {
  struct ref *remote_refs;
  struct ref *local_refs = get_local_heads();
  int match_flags = MATCH_REFS_NONE;
  int verbose = (transport->verbose > 0);
  int quiet = (transport->verbose < 0);
  int porcelain = flags & TRANSPORT_PUSH_PORCELAIN;
  int pretend = flags & TRANSPORT_PUSH_DRY_RUN;
  int push_ret, ret, err;
  struct argv_array ref_prefixes = ARGV_ARRAY_INIT;

  if (check_push_refs(local_refs, rs) < 0)
   return -1;

  refspec_ref_prefixes(rs, &ref_prefixes);

  trace2_region_enter("transport_push", "get_refs_list", r);
  remote_refs = transport->vtable->get_refs_list(transport, 1,
              &ref_prefixes);
  trace2_region_leave("transport_push", "get_refs_list", r);

  argv_array_clear(&ref_prefixes);

  if (flags & TRANSPORT_PUSH_ALL)
   match_flags |= MATCH_REFS_ALL;
  if (flags & TRANSPORT_PUSH_MIRROR)
   match_flags |= MATCH_REFS_MIRROR;
  if (flags & TRANSPORT_PUSH_PRUNE)
   match_flags |= MATCH_REFS_PRUNE;
  if (flags & TRANSPORT_PUSH_FOLLOW_TAGS)
   match_flags |= MATCH_REFS_FOLLOW_TAGS;

  if (match_push_refs(local_refs, &remote_refs, rs, match_flags))
   return -1;

  if (transport->smart_options &&
      transport->smart_options->cas &&
      !is_empty_cas(transport->smart_options->cas))
   apply_push_cas(transport->smart_options->cas,
           transport->remote, remote_refs);

  set_ref_status_for_push(remote_refs,
   flags & TRANSPORT_PUSH_MIRROR,
   flags & TRANSPORT_PUSH_FORCE);

  if (!(flags & TRANSPORT_PUSH_NO_HOOK))
   if (run_pre_push_hook(transport, remote_refs))
    return -1;

  if ((flags & (TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND |
         TRANSPORT_RECURSE_SUBMODULES_ONLY)) &&
      !is_bare_repository()) {
   struct ref *ref = remote_refs;
   struct oid_array commits = OID_ARRAY_INIT;

   trace2_region_enter("transport_push", "push_submodules", r);
   for (; ref; ref = ref->next)
    if (!is_null_oid(&ref->new_oid))
     oid_array_append(&commits,
         &ref->new_oid);

   if (!push_unpushed_submodules(r,
            &commits,
            transport->remote,
            rs,
            transport->push_options,
            pretend)) {
    oid_array_clear(&commits);
    trace2_region_leave("transport_push", "push_submodules", r);
    die(_("failed to push all needed submodules"));
   }
   oid_array_clear(&commits);
   trace2_region_leave("transport_push", "push_submodules", r);
  }

  if (((flags & TRANSPORT_RECURSE_SUBMODULES_CHECK) ||
       ((flags & (TRANSPORT_RECURSE_SUBMODULES_ON_DEMAND |
    TRANSPORT_RECURSE_SUBMODULES_ONLY)) &&
        !pretend)) && !is_bare_repository()) {
   struct ref *ref = remote_refs;
   struct string_list needs_pushing = STRING_LIST_INIT_DUP;
   struct oid_array commits = OID_ARRAY_INIT;

   trace2_region_enter("transport_push", "check_submodules", r);
   for (; ref; ref = ref->next)
    if (!is_null_oid(&ref->new_oid))
     oid_array_append(&commits,
         &ref->new_oid);

   if (find_unpushed_submodules(r,
           &commits,
           transport->remote->name,
           &needs_pushing)) {
    oid_array_clear(&commits);
    trace2_region_leave("transport_push", "check_submodules", r);
    die_with_unpushed_submodules(&needs_pushing);
   }
   string_list_clear(&needs_pushing, 0);
   oid_array_clear(&commits);
   trace2_region_leave("transport_push", "check_submodules", r);
  }

  if (!(flags & TRANSPORT_RECURSE_SUBMODULES_ONLY)) {
   trace2_region_enter("transport_push", "push_refs", r);
   push_ret = transport->vtable->push_refs(transport, remote_refs, flags);
   trace2_region_leave("transport_push", "push_refs", r);
  } else
   push_ret = 0;
  err = push_had_errors(remote_refs);
  ret = push_ret | err;

  if ((flags & TRANSPORT_PUSH_ATOMIC) && err) {
   struct ref *it;
   for (it = remote_refs; it; it = it->next)
    switch (it->status) {
    case 130:
    case 128:
    case 129:
     it->status = REF_STATUS_ATOMIC_PUSH_FAILED;
     break;
    default:
     break;
    }
  }

  if (!quiet || err)
   transport_print_push_status(transport->url, remote_refs,
     verbose | porcelain, porcelain,
     reject_reasons);

  if (flags & TRANSPORT_PUSH_SET_UPSTREAM)
   set_upstreams(transport, remote_refs, pretend);

  if (!(flags & (TRANSPORT_PUSH_DRY_RUN |
          TRANSPORT_RECURSE_SUBMODULES_ONLY))) {
   struct ref *ref;
   for (ref = remote_refs; ref; ref = ref->next)
    transport_update_tracking_ref(transport->remote, ref, verbose);
  }

  if (porcelain && !push_ret)
   puts("Done");
  else if (!quiet && !ret && !transport_refs_pushed(remote_refs))
   fprintf(stderr, "Everything up-to-date\n");

  return ret;
 }
 return 1;
}
