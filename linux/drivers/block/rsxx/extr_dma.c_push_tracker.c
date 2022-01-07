
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_tracker_list {int head; int lock; TYPE_1__* list; } ;
struct TYPE_2__ {int next_tag; int * dma; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void push_tracker(struct dma_tracker_list *trackers, int tag)
{
 spin_lock(&trackers->lock);
 trackers->list[tag].next_tag = trackers->head;
 trackers->head = tag;
 trackers->list[tag].dma = ((void*)0);
 spin_unlock(&trackers->lock);
}
