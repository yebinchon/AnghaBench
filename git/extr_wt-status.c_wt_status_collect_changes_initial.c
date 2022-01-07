
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wt_status_change_data {int stagemask; int oid_index; int mode_index; int index_status; } ;
struct wt_status {int committable; int change; int pathspec; TYPE_1__* repo; } ;
struct string_list_item {struct wt_status_change_data* util; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int oid; int ce_mode; int name; } ;
struct TYPE_2__ {struct index_state* index; } ;


 int DIFF_STATUS_ADDED ;
 int DIFF_STATUS_UNMERGED ;
 scalar_t__ ce_intent_to_add (struct cache_entry const*) ;
 int ce_path_match (struct index_state*,struct cache_entry const*,int *,int *) ;
 int ce_stage (struct cache_entry const*) ;
 int oidcpy (int *,int *) ;
 struct string_list_item* string_list_insert (int *,int ) ;
 struct wt_status_change_data* xcalloc (int,int) ;

__attribute__((used)) static void wt_status_collect_changes_initial(struct wt_status *s)
{
 struct index_state *istate = s->repo->index;
 int i;

 for (i = 0; i < istate->cache_nr; i++) {
  struct string_list_item *it;
  struct wt_status_change_data *d;
  const struct cache_entry *ce = istate->cache[i];

  if (!ce_path_match(istate, ce, &s->pathspec, ((void*)0)))
   continue;
  if (ce_intent_to_add(ce))
   continue;
  it = string_list_insert(&s->change, ce->name);
  d = it->util;
  if (!d) {
   d = xcalloc(1, sizeof(*d));
   it->util = d;
  }
  if (ce_stage(ce)) {
   d->index_status = DIFF_STATUS_UNMERGED;
   d->stagemask |= (1 << (ce_stage(ce) - 1));





   s->committable = 1;
  } else {
   d->index_status = DIFF_STATUS_ADDED;

   d->mode_index = ce->ce_mode;
   oidcpy(&d->oid_index, &ce->oid);
   s->committable = 1;
  }
 }
}
