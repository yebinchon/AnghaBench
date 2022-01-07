
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rev_info {scalar_t__ first_parent_only; } ;
struct merge_simplify_state {struct commit* simplified; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_3__ {int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;
struct TYPE_4__ {struct commit_list* next; } ;


 int TREESAME ;
 int UNINTERESTING ;
 TYPE_2__* commit_list_insert (struct commit*,struct commit_list**) ;
 scalar_t__ leave_one_treesame_to_parent (struct rev_info*,struct commit*) ;
 struct merge_simplify_state* locate_simplify_state (struct rev_info*,struct commit*) ;
 int mark_redundant_parents (struct commit*) ;
 scalar_t__ mark_treesame_root_parents (struct commit*) ;
 struct commit* one_relevant_parent (struct rev_info*,struct commit_list*) ;
 int remove_duplicate_parents (struct rev_info*,struct commit*) ;
 int remove_marked_parents (struct rev_info*,struct commit*) ;

__attribute__((used)) static struct commit_list **simplify_one(struct rev_info *revs, struct commit *commit, struct commit_list **tail)
{
 struct commit_list *p;
 struct commit *parent;
 struct merge_simplify_state *st, *pst;
 int cnt;

 st = locate_simplify_state(revs, commit);




 if (st->simplified)
  return tail;






 if ((commit->object.flags & UNINTERESTING) || !commit->parents) {
  st->simplified = commit;
  return tail;
 }






 for (cnt = 0, p = commit->parents; p; p = p->next) {
  pst = locate_simplify_state(revs, p->item);
  if (!pst->simplified) {
   tail = &commit_list_insert(p->item, tail)->next;
   cnt++;
  }
  if (revs->first_parent_only)
   break;
 }
 if (cnt) {
  tail = &commit_list_insert(commit, tail)->next;
  return tail;
 }






 for (p = commit->parents; p; p = p->next) {
  pst = locate_simplify_state(revs, p->item);
  p->item = pst->simplified;
  if (revs->first_parent_only)
   break;
 }

 if (revs->first_parent_only)
  cnt = 1;
 else
  cnt = remove_duplicate_parents(revs, commit);
 if (1 < cnt) {
  int marked = mark_redundant_parents(commit);
  marked += mark_treesame_root_parents(commit);
  if (marked)
   marked -= leave_one_treesame_to_parent(revs, commit);
  if (marked)
   cnt = remove_marked_parents(revs, commit);
 }
 if (!cnt ||
     (commit->object.flags & UNINTERESTING) ||
     !(commit->object.flags & TREESAME) ||
     (parent = one_relevant_parent(revs, commit->parents)) == ((void*)0))
  st->simplified = commit;
 else {
  pst = locate_simplify_state(revs, parent);
  st->simplified = pst->simplified;
 }
 return tail;
}
