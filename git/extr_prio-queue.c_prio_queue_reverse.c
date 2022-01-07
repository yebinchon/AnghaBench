
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_queue {int nr; int * compare; } ;


 int BUG (char*) ;
 int swap (struct prio_queue*,int,int) ;

void prio_queue_reverse(struct prio_queue *queue)
{
 int i, j;

 if (queue->compare != ((void*)0))
  BUG("prio_queue_reverse() on non-LIFO queue");
 for (i = 0; i < (j = (queue->nr - 1) - i); i++)
  swap(queue, i, j);
}
