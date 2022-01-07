
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {scalar_t__ nr; struct diff_filepair** queue; int alloc; } ;
struct diff_filepair {int dummy; } ;


 int ALLOC_GROW (struct diff_filepair**,scalar_t__,int ) ;

void diff_q(struct diff_queue_struct *queue, struct diff_filepair *dp)
{
 ALLOC_GROW(queue->queue, queue->nr + 1, queue->alloc);
 queue->queue[queue->nr++] = dp;
}
