
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* q; int deadline; } ;
struct TYPE_2__ {int timeout_work; } ;


 int WRITE_ONCE (int ,int ) ;
 int jiffies ;
 int kblockd_schedule_work (int *) ;

void blk_abort_request(struct request *req)
{





 WRITE_ONCE(req->deadline, jiffies);
 kblockd_schedule_work(&req->q->timeout_work);
}
