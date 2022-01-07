
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int timeout; } ;
struct nbd_device {TYPE_2__* disk; TYPE_1__ tag_set; } ;
struct TYPE_4__ {int queue; } ;


 int HZ ;
 int blk_queue_rq_timeout (int ,int) ;

__attribute__((used)) static void nbd_set_cmd_timeout(struct nbd_device *nbd, u64 timeout)
{
 nbd->tag_set.timeout = timeout * HZ;
 if (timeout)
  blk_queue_rq_timeout(nbd->disk->queue, timeout * HZ);
}
