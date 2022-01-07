
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_queue {scalar_t__ insertion_ctr; scalar_t__ alloc; scalar_t__ nr; int array; } ;


 int FREE_AND_NULL (int ) ;

void clear_prio_queue(struct prio_queue *queue)
{
 FREE_AND_NULL(queue->array);
 queue->nr = 0;
 queue->alloc = 0;
 queue->insertion_ctr = 0;
}
