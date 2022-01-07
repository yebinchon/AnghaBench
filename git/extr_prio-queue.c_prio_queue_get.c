
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {size_t nr; TYPE_1__* array; int compare; } ;
struct TYPE_2__ {void* data; } ;


 scalar_t__ compare (struct prio_queue*,int,int) ;
 int swap (struct prio_queue*,int,int) ;

void *prio_queue_get(struct prio_queue *queue)
{
 void *result;
 int ix, child;

 if (!queue->nr)
  return ((void*)0);
 if (!queue->compare)
  return queue->array[--queue->nr].data;

 result = queue->array[0].data;
 if (!--queue->nr)
  return result;

 queue->array[0] = queue->array[queue->nr];


 for (ix = 0; ix * 2 + 1 < queue->nr; ix = child) {
  child = ix * 2 + 1;
  if (child + 1 < queue->nr &&
      compare(queue, child, child + 1) >= 0)
   child++;

  if (compare(queue, ix, child) <= 0)
   break;

  swap(queue, child, ix);
 }
 return result;
}
