
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int WARN_ONCE (int,char*) ;
 int blk_queue_scsi_passthrough (struct request_queue*) ;
 int bsg_register_queue (struct request_queue*,struct device*,int ,int *) ;
 int bsg_scsi_ops ;
 int dev_name (struct device*) ;

int bsg_scsi_register_queue(struct request_queue *q, struct device *parent)
{
 if (!blk_queue_scsi_passthrough(q)) {
  WARN_ONCE(1, "Attempt to register a non-SCSI queue\n");
  return -EINVAL;
 }

 return bsg_register_queue(q, parent, dev_name(parent), &bsg_scsi_ops);
}
