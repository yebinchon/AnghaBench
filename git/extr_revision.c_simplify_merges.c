
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {struct commit_list* commits; int prune; } ;
struct merge_simplify_state {struct commit* simplified; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {struct commit_list* next; } ;


 TYPE_1__* commit_list_insert (struct commit*,struct commit_list**) ;
 struct merge_simplify_state* locate_simplify_state (struct rev_info*,struct commit*) ;
 struct commit* pop_commit (struct commit_list**) ;
 struct commit_list** simplify_one (struct rev_info*,struct commit*,struct commit_list**) ;

__attribute__((used)) static void simplify_merges(struct rev_info *revs)
{
 struct commit_list *list, *next;
 struct commit_list *yet_to_do, **tail;
 struct commit *commit;

 if (!revs->prune)
  return;


 yet_to_do = ((void*)0);
 for (list = revs->commits; list; list = next) {
  commit = list->item;
  next = list->next;




  commit_list_insert(commit, &yet_to_do);
 }
 while (yet_to_do) {
  list = yet_to_do;
  yet_to_do = ((void*)0);
  tail = &yet_to_do;
  while (list) {
   commit = pop_commit(&list);
   tail = simplify_one(revs, commit, tail);
  }
 }


 list = revs->commits;
 revs->commits = ((void*)0);
 tail = &revs->commits;
 while (list) {
  struct merge_simplify_state *st;

  commit = pop_commit(&list);
  st = locate_simplify_state(revs, commit);
  if (st->simplified == commit)
   tail = &commit_list_insert(commit, tail)->next;
 }
}
