
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {int nr; int compare; TYPE_1__* array; int insertion_ctr; int alloc; } ;
struct TYPE_2__ {void* data; scalar_t__ ctr; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;
 scalar_t__ compare (struct prio_queue*,int,int) ;
 int swap (struct prio_queue*,int,int) ;

void prio_queue_put(struct prio_queue *queue, void *thing)
{
 int ix, parent;


 ALLOC_GROW(queue->array, queue->nr + 1, queue->alloc);
 queue->array[queue->nr].ctr = queue->insertion_ctr++;
 queue->array[queue->nr].data = thing;
 queue->nr++;
 if (!queue->compare)
  return;


 for (ix = queue->nr - 1; ix; ix = parent) {
  parent = (ix - 1) / 2;
  if (compare(queue, parent, ix) <= 0)
   break;

  swap(queue, parent, ix);
 }
}
