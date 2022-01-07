
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_queue_map {int queue_offset; } ;



__attribute__((used)) static int queue_index(struct blk_mq_queue_map *qmap,
         unsigned int nr_queues, const int q)
{
 return qmap->queue_offset + (q % nr_queues);
}
