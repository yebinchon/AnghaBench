
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {int nr; TYPE_1__* array; int compare; } ;
struct TYPE_2__ {void* data; } ;



void *prio_queue_peek(struct prio_queue *queue)
{
 if (!queue->nr)
  return ((void*)0);
 if (!queue->compare)
  return queue->array[queue->nr - 1].data;
 return queue->array[0].data;
}
