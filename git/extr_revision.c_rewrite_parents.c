
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct commit_list {struct commit_list* next; int item; } ;
struct commit {struct commit_list* parents; } ;
typedef int (* rewrite_parent_fn_t ) (struct rev_info*,int *) ;


 int remove_duplicate_parents (struct rev_info*,struct commit*) ;




int rewrite_parents(struct rev_info *revs, struct commit *commit,
 rewrite_parent_fn_t rewrite_parent)
{
 struct commit_list **pp = &commit->parents;
 while (*pp) {
  struct commit_list *parent = *pp;
  switch (rewrite_parent(revs, &parent->item)) {
  case 128:
   break;
  case 129:
   *pp = parent->next;
   continue;
  case 130:
   return -1;
  }
  pp = &parent->next;
 }
 remove_duplicate_parents(revs, commit);
 return 0;
}
