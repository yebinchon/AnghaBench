
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_obj_request {int write_state; int flags; int num_img_extents; } ;


 int RBD_OBJ_FLAG_COPYUP_ENABLED ;
 int RBD_OBJ_FLAG_DELETION ;
 int RBD_OBJ_FLAG_NOOP_FOR_NONEXISTENT ;
 int RBD_OBJ_WRITE_START ;
 int rbd_obj_calc_img_extents (struct rbd_obj_request*,int) ;
 scalar_t__ rbd_obj_copyup_enabled (struct rbd_obj_request*) ;
 scalar_t__ rbd_obj_is_entire (struct rbd_obj_request*) ;

__attribute__((used)) static int rbd_obj_init_zeroout(struct rbd_obj_request *obj_req)
{
 int ret;


 ret = rbd_obj_calc_img_extents(obj_req, 1);
 if (ret)
  return ret;

 if (rbd_obj_copyup_enabled(obj_req))
  obj_req->flags |= RBD_OBJ_FLAG_COPYUP_ENABLED;
 if (!obj_req->num_img_extents) {
  obj_req->flags |= RBD_OBJ_FLAG_NOOP_FOR_NONEXISTENT;
  if (rbd_obj_is_entire(obj_req))
   obj_req->flags |= RBD_OBJ_FLAG_DELETION;
 }

 obj_req->write_state = RBD_OBJ_WRITE_START;
 return 0;
}
