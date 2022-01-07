
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {scalar_t__ first_parent_only; scalar_t__ sources; scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing_links; scalar_t__ no_walk; int include_check_data; int (* include_check ) (struct commit*,int ) ;} ;
struct prio_queue {int dummy; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int ADDED ;
 int SEEN ;
 unsigned int SYMMETRIC_LEFT ;
 int UNINTERESTING ;
 int commit_list_insert_by_date (struct commit*,struct commit_list**) ;
 scalar_t__ is_promisor_object (int *) ;
 int mark_parents_uninteresting (struct commit*) ;
 scalar_t__ parse_commit_gently (struct commit*,int) ;
 int prio_queue_put (struct prio_queue*,struct commit*) ;
 char** revision_sources_at (scalar_t__,struct commit*) ;
 int stub1 (struct commit*,int ) ;
 int try_to_simplify_commit (struct rev_info*,struct commit*) ;

__attribute__((used)) static int process_parents(struct rev_info *revs, struct commit *commit,
      struct commit_list **list, struct prio_queue *queue)
{
 struct commit_list *parent = commit->parents;
 unsigned left_flag;

 if (commit->object.flags & ADDED)
  return 0;
 commit->object.flags |= ADDED;

 if (revs->include_check &&
     !revs->include_check(commit, revs->include_check_data))
  return 0;
 if (commit->object.flags & UNINTERESTING) {
  while (parent) {
   struct commit *p = parent->item;
   parent = parent->next;
   if (p)
    p->object.flags |= UNINTERESTING;
   if (parse_commit_gently(p, 1) < 0)
    continue;
   if (p->parents)
    mark_parents_uninteresting(p);
   if (p->object.flags & SEEN)
    continue;
   p->object.flags |= SEEN;
   if (list)
    commit_list_insert_by_date(p, list);
   if (queue)
    prio_queue_put(queue, p);
  }
  return 0;
 }






 try_to_simplify_commit(revs, commit);

 if (revs->no_walk)
  return 0;

 left_flag = (commit->object.flags & SYMMETRIC_LEFT);

 for (parent = commit->parents; parent; parent = parent->next) {
  struct commit *p = parent->item;
  int gently = revs->ignore_missing_links ||
        revs->exclude_promisor_objects;
  if (parse_commit_gently(p, gently) < 0) {
   if (revs->exclude_promisor_objects &&
       is_promisor_object(&p->object.oid)) {
    if (revs->first_parent_only)
     break;
    continue;
   }
   return -1;
  }
  if (revs->sources) {
   char **slot = revision_sources_at(revs->sources, p);

   if (!*slot)
    *slot = *revision_sources_at(revs->sources, commit);
  }
  p->object.flags |= left_flag;
  if (!(p->object.flags & SEEN)) {
   p->object.flags |= SEEN;
   if (list)
    commit_list_insert_by_date(p, list);
   if (queue)
    prio_queue_put(queue, p);
  }
  if (revs->first_parent_only)
   break;
 }
 return 0;
}
