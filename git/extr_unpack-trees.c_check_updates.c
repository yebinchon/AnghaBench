
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct unpack_trees_options {scalar_t__ clone; scalar_t__ update; int dry_run; struct index_state result; } ;
struct progress {int dummy; } ;
struct oid_array {scalar_t__ nr; int oid; } ;
struct checkout {int force; int quiet; int refresh_cache; struct index_state* istate; } ;
struct cache_entry {int ce_flags; int name; int oid; int ce_mode; } ;


 int BUG (char*,int ) ;
 int CE_UPDATE ;
 int CE_WT_REMOVE ;
 struct checkout CHECKOUT_INIT ;
 int GIT_ATTR_CHECKIN ;
 int GIT_ATTR_CHECKOUT ;
 int OBJECT_INFO_FOR_PREFETCH ;
 struct oid_array OID_ARRAY_INIT ;
 scalar_t__ S_ISGITLINK (int ) ;
 int checkout_entry (struct cache_entry*,struct checkout*,int *,int *) ;
 int display_progress (struct progress*,unsigned int) ;
 int enable_delayed_checkout (struct checkout*) ;
 int finish_delayed_checkout (struct checkout*,int *) ;
 struct progress* get_progress (struct unpack_trees_options*) ;
 int git_attr_set_direction (int ) ;
 scalar_t__ has_promisor_remote () ;
 int load_gitmodules_file (struct index_state*,struct checkout*) ;
 int oid_array_append (struct oid_array*,int *) ;
 int oid_array_clear (struct oid_array*) ;
 int oid_object_info_extended (int ,int *,int *,int ) ;
 int promisor_remote_get_direct (int ,int ,scalar_t__) ;
 int remove_marked_cache_entries (struct index_state*,int ) ;
 int remove_scheduled_dirs () ;
 int report_collided_checkout (struct index_state*) ;
 int setup_collided_checkout_detection (struct checkout*,struct index_state*) ;
 scalar_t__ should_update_submodules () ;
 int stop_progress (struct progress**) ;
 int the_repository ;
 int trace_performance_enter () ;
 int trace_performance_leave (char*) ;
 int unlink_entry (struct cache_entry const*) ;

__attribute__((used)) static int check_updates(struct unpack_trees_options *o)
{
 unsigned cnt = 0;
 int errs = 0;
 struct progress *progress;
 struct index_state *index = &o->result;
 struct checkout state = CHECKOUT_INIT;
 int i;

 trace_performance_enter();
 state.force = 1;
 state.quiet = 1;
 state.refresh_cache = 1;
 state.istate = index;

 if (o->clone)
  setup_collided_checkout_detection(&state, index);

 progress = get_progress(o);

 if (o->update)
  git_attr_set_direction(GIT_ATTR_CHECKOUT);

 if (should_update_submodules() && o->update && !o->dry_run)
  load_gitmodules_file(index, ((void*)0));

 for (i = 0; i < index->cache_nr; i++) {
  const struct cache_entry *ce = index->cache[i];

  if (ce->ce_flags & CE_WT_REMOVE) {
   display_progress(progress, ++cnt);
   if (o->update && !o->dry_run)
    unlink_entry(ce);
  }
 }
 remove_marked_cache_entries(index, 0);
 remove_scheduled_dirs();

 if (should_update_submodules() && o->update && !o->dry_run)
  load_gitmodules_file(index, &state);

 enable_delayed_checkout(&state);
 if (has_promisor_remote() && o->update && !o->dry_run) {




  struct oid_array to_fetch = OID_ARRAY_INIT;
  for (i = 0; i < index->cache_nr; i++) {
   struct cache_entry *ce = index->cache[i];

   if (!(ce->ce_flags & CE_UPDATE) ||
       S_ISGITLINK(ce->ce_mode))
    continue;
   if (!oid_object_info_extended(the_repository, &ce->oid,
            ((void*)0),
            OBJECT_INFO_FOR_PREFETCH))
    continue;
   oid_array_append(&to_fetch, &ce->oid);
  }
  if (to_fetch.nr)
   promisor_remote_get_direct(the_repository,
         to_fetch.oid, to_fetch.nr);
  oid_array_clear(&to_fetch);
 }
 for (i = 0; i < index->cache_nr; i++) {
  struct cache_entry *ce = index->cache[i];

  if (ce->ce_flags & CE_UPDATE) {
   if (ce->ce_flags & CE_WT_REMOVE)
    BUG("both update and delete flags are set on %s",
        ce->name);
   display_progress(progress, ++cnt);
   ce->ce_flags &= ~CE_UPDATE;
   if (o->update && !o->dry_run) {
    errs |= checkout_entry(ce, &state, ((void*)0), ((void*)0));
   }
  }
 }
 stop_progress(&progress);
 errs |= finish_delayed_checkout(&state, ((void*)0));
 if (o->update)
  git_attr_set_direction(GIT_ATTR_CHECKIN);

 if (o->clone)
  report_collided_checkout(index);

 trace_performance_leave("check_updates");
 return errs != 0;
}
