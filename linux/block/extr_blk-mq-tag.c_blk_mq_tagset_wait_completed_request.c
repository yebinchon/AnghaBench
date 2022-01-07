
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tag_set {int dummy; } ;


 int blk_mq_tagset_busy_iter (struct blk_mq_tag_set*,int ,unsigned int*) ;
 int blk_mq_tagset_count_completed_rqs ;
 int msleep (int) ;

void blk_mq_tagset_wait_completed_request(struct blk_mq_tag_set *tagset)
{
 while (1) {
  unsigned count = 0;

  blk_mq_tagset_busy_iter(tagset,
    blk_mq_tagset_count_completed_rqs, &count);
  if (!count)
   break;
  msleep(5);
 }
}
