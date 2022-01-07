
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int tag_set; } ;


 int blk_mq_tagset_busy_iter (int *,int ,struct skd_device*) ;
 int skd_recover_request ;

__attribute__((used)) static void skd_recover_requests(struct skd_device *skdev)
{
 blk_mq_tagset_busy_iter(&skdev->tag_set, skd_recover_request, skdev);
}
