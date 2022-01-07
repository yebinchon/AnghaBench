
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_3__ {int size; } ;
struct drbd_request {TYPE_1__ i; int master_bio; } ;
struct drbd_device {TYPE_2__* vdisk; struct request_queue* rq_queue; } ;
struct TYPE_4__ {int part0; } ;


 int bio_op (int ) ;
 int generic_start_io_acct (struct request_queue*,int ,int,int *) ;

__attribute__((used)) static void _drbd_start_io_acct(struct drbd_device *device, struct drbd_request *req)
{
 struct request_queue *q = device->rq_queue;

 generic_start_io_acct(q, bio_op(req->master_bio),
    req->i.size >> 9, &device->vdisk->part0);
}
