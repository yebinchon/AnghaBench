
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct treesame_state {int* treesame; } ;
struct TYPE_3__ {scalar_t__ name; } ;
struct rev_info {int remove_empty_trees; int simplify_history; TYPE_1__ treesame; scalar_t__ first_parent_only; int dense; int prune; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_4__ {int flags; int oid; } ;
struct commit {TYPE_2__ object; struct commit_list* parents; } ;






 int TREESAME ;
 int UNINTERESTING ;
 int die (char*,int ,...) ;
 int get_commit_tree (struct commit*) ;
 struct treesame_state* initialise_treesame (struct rev_info*,struct commit*) ;
 int oid_to_hex (int *) ;
 scalar_t__ parse_commit (struct commit*) ;
 scalar_t__ relevant_commit (struct commit*) ;
 int rev_compare_tree (struct rev_info*,struct commit*,struct commit*) ;
 scalar_t__ rev_same_tree_as_empty (struct rev_info*,struct commit*) ;

__attribute__((used)) static void try_to_simplify_commit(struct rev_info *revs, struct commit *commit)
{
 struct commit_list **pp, *parent;
 struct treesame_state *ts = ((void*)0);
 int relevant_change = 0, irrelevant_change = 0;
 int relevant_parents, nth_parent;




 if (!revs->prune)
  return;

 if (!get_commit_tree(commit))
  return;

 if (!commit->parents) {
  if (rev_same_tree_as_empty(revs, commit))
   commit->object.flags |= TREESAME;
  return;
 }





 if (!revs->dense && !commit->parents->next)
  return;

 for (pp = &commit->parents, nth_parent = 0, relevant_parents = 0;
      (parent = *pp) != ((void*)0);
      pp = &parent->next, nth_parent++) {
  struct commit *p = parent->item;
  if (relevant_commit(p))
   relevant_parents++;

  if (nth_parent == 1) {
   if (revs->first_parent_only)
    break;






   if (revs->treesame.name &&
       !revs->simplify_history &&
       !(commit->object.flags & UNINTERESTING)) {
    ts = initialise_treesame(revs, commit);
    if (!(irrelevant_change || relevant_change))
     ts->treesame[0] = 1;
   }
  }
  if (parse_commit(p) < 0)
   die("cannot simplify commit %s (because of %s)",
       oid_to_hex(&commit->object.oid),
       oid_to_hex(&p->object.oid));
  switch (rev_compare_tree(revs, p, commit)) {
  case 128:
   if (!revs->simplify_history || !relevant_commit(p)) {






    if (ts)
     ts->treesame[nth_parent] = 1;
    continue;
   }
   parent->next = ((void*)0);
   commit->parents = parent;
   commit->object.flags |= TREESAME;
   return;

  case 130:
   if (revs->remove_empty_trees &&
       rev_same_tree_as_empty(revs, p)) {
    if (parse_commit(p) < 0)
     die("cannot simplify commit %s (invalid %s)",
         oid_to_hex(&commit->object.oid),
         oid_to_hex(&p->object.oid));
    p->parents = ((void*)0);
   }

  case 129:
  case 131:
   if (relevant_commit(p))
    relevant_change = 1;
   else
    irrelevant_change = 1;
   continue;
  }
  die("bad tree compare for commit %s", oid_to_hex(&commit->object.oid));
 }
 if (relevant_parents ? !relevant_change : !irrelevant_change)
  commit->object.flags |= TREESAME;
}
