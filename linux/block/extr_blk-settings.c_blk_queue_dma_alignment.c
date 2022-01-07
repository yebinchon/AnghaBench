
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dma_alignment; } ;



void blk_queue_dma_alignment(struct request_queue *q, int mask)
{
 q->dma_alignment = mask;
}
