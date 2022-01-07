
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treesame_state {scalar_t__* treesame; } ;
struct rev_info {int treesame; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 int TMP_MARK ;
 struct treesame_state* lookup_decoration (int *,TYPE_1__*) ;

__attribute__((used)) static int leave_one_treesame_to_parent(struct rev_info *revs, struct commit *commit)
{
 struct treesame_state *ts = lookup_decoration(&revs->treesame, &commit->object);
 struct commit *unmarked = ((void*)0), *marked = ((void*)0);
 struct commit_list *p;
 unsigned n;

 for (p = commit->parents, n = 0; p; p = p->next, n++) {
  if (ts->treesame[n]) {
   if (p->item->object.flags & TMP_MARK) {
    if (!marked)
     marked = p->item;
   } else {
    if (!unmarked) {
     unmarked = p->item;
     break;
    }
   }
  }
 }
 if (!unmarked && marked) {
  marked->object.flags &= ~TMP_MARK;
  return 1;
 }

 return 0;
}
