
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_obj_request {int write_state; int flags; int copyup_state; TYPE_1__* img_request; } ;
struct rbd_device {int dummy; } ;
struct TYPE_2__ {struct rbd_device* rbd_dev; } ;


 int BUG () ;
 int ENOENT ;
 int RBD_OBJ_COPYUP_START ;
 int RBD_OBJ_FLAG_COPYUP_ENABLED ;
 int RBD_OBJ_FLAG_DELETION ;






 int rbd_assert (int) ;
 int rbd_obj_advance_copyup (struct rbd_obj_request*,int*) ;
 int rbd_obj_write_is_noop (struct rbd_obj_request*) ;
 int rbd_obj_write_object (struct rbd_obj_request*) ;
 int rbd_obj_write_post_object_map (struct rbd_obj_request*) ;
 int rbd_obj_write_pre_object_map (struct rbd_obj_request*) ;
 int rbd_warn (struct rbd_device*,char*,int) ;

__attribute__((used)) static bool rbd_obj_advance_write(struct rbd_obj_request *obj_req, int *result)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 int ret;

again:
 switch (obj_req->write_state) {
 case 129:
  rbd_assert(!*result);

  if (rbd_obj_write_is_noop(obj_req))
   return 1;

  ret = rbd_obj_write_pre_object_map(obj_req);
  if (ret < 0) {
   *result = ret;
   return 1;
  }
  obj_req->write_state = 130;
  if (ret > 0)
   goto again;
  return 0;
 case 130:
  if (*result) {
   rbd_warn(rbd_dev, "pre object map update failed: %d",
     *result);
   return 1;
  }
  ret = rbd_obj_write_object(obj_req);
  if (ret) {
   *result = ret;
   return 1;
  }
  obj_req->write_state = 132;
  return 0;
 case 132:
  if (*result == -ENOENT) {
   if (obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED) {
    *result = 0;
    obj_req->copyup_state = RBD_OBJ_COPYUP_START;
    obj_req->write_state = 128;
    goto again;
   }




   if (obj_req->flags & RBD_OBJ_FLAG_DELETION)
    *result = 0;
  }
  if (*result)
   return 1;

  obj_req->write_state = 133;
  goto again;
 case 128:
  if (!rbd_obj_advance_copyup(obj_req, result))
   return 0;

 case 133:
  if (*result) {
   rbd_warn(rbd_dev, "copyup failed: %d", *result);
   return 1;
  }
  ret = rbd_obj_write_post_object_map(obj_req);
  if (ret < 0) {
   *result = ret;
   return 1;
  }
  obj_req->write_state = 131;
  if (ret > 0)
   goto again;
  return 0;
 case 131:
  if (*result)
   rbd_warn(rbd_dev, "post object map update failed: %d",
     *result);
  return 1;
 default:
  BUG();
 }
}
