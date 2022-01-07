
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int result; int num_pending; } ;
struct rbd_obj_request {int flags; TYPE_3__ pending; TYPE_2__* img_request; } ;
struct TYPE_5__ {TYPE_1__* snapc; } ;
struct TYPE_4__ {scalar_t__ num_snaps; } ;


 scalar_t__ MODS_ONLY ;
 int RBD_OBJ_FLAG_COPYUP_ZEROS ;
 int rbd_assert (int) ;
 int rbd_obj_copyup_current_snapc (struct rbd_obj_request*,scalar_t__) ;
 int rbd_obj_copyup_empty_snapc (struct rbd_obj_request*,scalar_t__) ;
 scalar_t__ rbd_obj_img_extents_bytes (struct rbd_obj_request*) ;

__attribute__((used)) static void rbd_obj_copyup_write_object(struct rbd_obj_request *obj_req)
{
 u32 bytes = rbd_obj_img_extents_bytes(obj_req);
 int ret;

 rbd_assert(!obj_req->pending.result && !obj_req->pending.num_pending);






 if (obj_req->flags & RBD_OBJ_FLAG_COPYUP_ZEROS)
  bytes = 0;

 if (obj_req->img_request->snapc->num_snaps && bytes > 0) {






  ret = rbd_obj_copyup_empty_snapc(obj_req, bytes);
  if (ret) {
   obj_req->pending.result = ret;
   return;
  }

  obj_req->pending.num_pending++;
  bytes = MODS_ONLY;
 }

 ret = rbd_obj_copyup_current_snapc(obj_req, bytes);
 if (ret) {
  obj_req->pending.result = ret;
  return;
 }

 obj_req->pending.num_pending++;
}
