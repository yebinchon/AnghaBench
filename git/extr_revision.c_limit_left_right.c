
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {scalar_t__ right_only; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int SHOWN ;
 int SYMMETRIC_LEFT ;

__attribute__((used)) static void limit_left_right(struct commit_list *list, struct rev_info *revs)
{
 struct commit_list *p;

 for (p = list; p; p = p->next) {
  struct commit *commit = p->item;

  if (revs->right_only) {
   if (commit->object.flags & SYMMETRIC_LEFT)
    commit->object.flags |= SHOWN;
  } else
   if (!(commit->object.flags & SYMMETRIC_LEFT))
    commit->object.flags |= SHOWN;
 }
}
