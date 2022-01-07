
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {scalar_t__ nr; } ;
struct commit_list {struct commit_list* next; TYPE_1__* item; } ;
struct commit {scalar_t__ date; } ;
struct TYPE_2__ {scalar_t__ date; } ;


 struct commit_list* commit_list_insert (struct commit*,struct commit_list**) ;
 int prio_queue_get (struct prio_queue*) ;
 struct commit* prio_queue_peek (struct prio_queue*) ;

__attribute__((used)) static void merge_queue_into_list(struct prio_queue *q, struct commit_list **list)
{
 while (q->nr) {
  struct commit *item = prio_queue_peek(q);
  struct commit_list *p = *list;

  if (p && p->item->date >= item->date)
   list = &p->next;
  else {
   p = commit_list_insert(item, list);
   list = &p->next;
   prio_queue_get(q);
  }
 }
}
