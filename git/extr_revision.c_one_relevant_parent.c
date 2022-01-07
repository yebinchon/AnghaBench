
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ first_parent_only; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;


 scalar_t__ relevant_commit (struct commit*) ;

__attribute__((used)) static struct commit *one_relevant_parent(const struct rev_info *revs,
       struct commit_list *orig)
{
 struct commit_list *list = orig;
 struct commit *relevant = ((void*)0);

 if (!orig)
  return ((void*)0);






 if (revs->first_parent_only || !orig->next)
  return orig->item;
 while (list) {
  struct commit *commit = list->item;
  list = list->next;
  if (relevant_commit(commit)) {
   if (relevant)
    return ((void*)0);
   relevant = commit;
  }
 }
 return relevant;
}
