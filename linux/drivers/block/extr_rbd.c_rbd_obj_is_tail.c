
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ oe_off; scalar_t__ oe_len; } ;
struct rbd_obj_request {TYPE_2__ ex; TYPE_1__* img_request; } ;
struct TYPE_6__ {scalar_t__ object_size; } ;
struct rbd_device {TYPE_3__ layout; } ;
struct TYPE_4__ {struct rbd_device* rbd_dev; } ;



__attribute__((used)) static bool rbd_obj_is_tail(struct rbd_obj_request *obj_req)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;

 return obj_req->ex.oe_off + obj_req->ex.oe_len ==
     rbd_dev->layout.object_size;
}
