
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rbd_obj_request {TYPE_2__* img_request; int num_img_extents; } ;
struct TYPE_4__ {TYPE_1__* snapc; } ;
struct TYPE_3__ {int num_snaps; } ;


 scalar_t__ rbd_obj_is_entire (struct rbd_obj_request*) ;

__attribute__((used)) static bool rbd_obj_copyup_enabled(struct rbd_obj_request *obj_req)
{
 if (!obj_req->num_img_extents ||
     (rbd_obj_is_entire(obj_req) &&
      !obj_req->img_request->snapc->num_snaps))
  return 0;

 return 1;
}
