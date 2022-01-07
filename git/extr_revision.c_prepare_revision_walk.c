
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_8__ {int * objects; scalar_t__ alloc; scalar_t__ nr; } ;
struct rev_info {scalar_t__ no_walk; TYPE_3__ children; scalar_t__ simplify_merges; scalar_t__ line_level_traverse; scalar_t__ topo_order; int sort_order; struct commit_list* commits; scalar_t__ limited; scalar_t__ exclude_promisor_objects; TYPE_2__ treesame; TYPE_4__ pending; } ;
struct object_array_entry {int dummy; } ;
struct object_array {int nr; struct object_array_entry* objects; } ;
struct commit_list {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct commit {TYPE_1__ object; } ;
typedef int old_pending ;


 int FOR_EACH_OBJECT_PROMISOR_ONLY ;
 scalar_t__ REVISION_WALK_NO_WALK_UNSORTED ;
 int SEEN ;
 struct commit_list** commit_list_append (struct commit*,struct commit_list**) ;
 int commit_list_sort_by_date (struct commit_list**) ;
 int for_each_packed_object (int ,struct rev_info*,int ) ;
 struct commit* handle_commit (struct rev_info*,struct object_array_entry*) ;
 int init_topo_walk (struct rev_info*) ;
 scalar_t__ limit_list (struct rev_info*) ;
 scalar_t__ limiting_can_increase_treesame (struct rev_info*) ;
 int line_log_filter (struct rev_info*) ;
 int mark_uninteresting ;
 int memcpy (struct object_array*,TYPE_4__*,int) ;
 int object_array_clear (struct object_array*) ;
 int set_children (struct rev_info*) ;
 int simplify_merges (struct rev_info*) ;
 int sort_in_topological_order (struct commit_list**,int ) ;

int prepare_revision_walk(struct rev_info *revs)
{
 int i;
 struct object_array old_pending;
 struct commit_list **next = &revs->commits;

 memcpy(&old_pending, &revs->pending, sizeof(old_pending));
 revs->pending.nr = 0;
 revs->pending.alloc = 0;
 revs->pending.objects = ((void*)0);
 for (i = 0; i < old_pending.nr; i++) {
  struct object_array_entry *e = old_pending.objects + i;
  struct commit *commit = handle_commit(revs, e);
  if (commit) {
   if (!(commit->object.flags & SEEN)) {
    commit->object.flags |= SEEN;
    next = commit_list_append(commit, next);
   }
  }
 }
 object_array_clear(&old_pending);


 if (revs->simplify_merges ||
     (revs->limited && limiting_can_increase_treesame(revs)))
  revs->treesame.name = "treesame";

 if (revs->exclude_promisor_objects) {
  for_each_packed_object(mark_uninteresting, revs,
           FOR_EACH_OBJECT_PROMISOR_ONLY);
 }

 if (revs->no_walk != REVISION_WALK_NO_WALK_UNSORTED)
  commit_list_sort_by_date(&revs->commits);
 if (revs->no_walk)
  return 0;
 if (revs->limited) {
  if (limit_list(revs) < 0)
   return -1;
  if (revs->topo_order)
   sort_in_topological_order(&revs->commits, revs->sort_order);
 } else if (revs->topo_order)
  init_topo_walk(revs);
 if (revs->line_level_traverse)
  line_log_filter(revs);
 if (revs->simplify_merges)
  simplify_merges(revs);
 if (revs->children.name)
  set_children(revs);
 return 0;
}
