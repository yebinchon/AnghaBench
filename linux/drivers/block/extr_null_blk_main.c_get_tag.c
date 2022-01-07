
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_queue {unsigned int queue_depth; int tag_map; } ;


 unsigned int find_first_zero_bit (int ,unsigned int) ;
 scalar_t__ test_and_set_bit_lock (unsigned int,int ) ;

__attribute__((used)) static unsigned int get_tag(struct nullb_queue *nq)
{
 unsigned int tag;

 do {
  tag = find_first_zero_bit(nq->tag_map, nq->queue_depth);
  if (tag >= nq->queue_depth)
   return -1U;
 } while (test_and_set_bit_lock(tag, nq->tag_map));

 return tag;
}
