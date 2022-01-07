
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct drbd_request {int start_jif; int master_bio; } ;
struct drbd_device {TYPE_1__* vdisk; struct request_queue* rq_queue; } ;
struct TYPE_2__ {int part0; } ;


 int bio_op (int ) ;
 int generic_end_io_acct (struct request_queue*,int ,int *,int ) ;

__attribute__((used)) static void _drbd_end_io_acct(struct drbd_device *device, struct drbd_request *req)
{
 struct request_queue *q = device->rq_queue;

 generic_end_io_acct(q, bio_op(req->master_bio),
       &device->vdisk->part0, req->start_jif);
}
