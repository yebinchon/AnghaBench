
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int tag_set; } ;


 int blk_mq_tagset_busy_iter (int *,int ,int*) ;
 int skd_inc_in_flight ;

__attribute__((used)) static int skd_in_flight(struct skd_device *skdev)
{
 int count = 0;

 blk_mq_tagset_busy_iter(&skdev->tag_set, skd_inc_in_flight, &count);

 return count;
}
