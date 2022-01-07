
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_obj_request {int flags; int num_img_extents; struct rbd_img_request* img_request; } ;
struct rbd_img_request {int op_type; int rbd_dev; } ;


 int BUG () ;



 int RBD_OBJ_FLAG_COPYUP_ENABLED ;
 int RBD_OBJ_FLAG_MAY_EXIST ;
 int rbd_obj_is_entire (struct rbd_obj_request*) ;
 int use_object_map (int ) ;

__attribute__((used)) static int count_write_ops(struct rbd_obj_request *obj_req)
{
 struct rbd_img_request *img_req = obj_req->img_request;

 switch (img_req->op_type) {
 case 129:
  if (!use_object_map(img_req->rbd_dev) ||
      !(obj_req->flags & RBD_OBJ_FLAG_MAY_EXIST))
   return 2;

  return 1;
 case 130:
  return 1;
 case 128:
  if (rbd_obj_is_entire(obj_req) && obj_req->num_img_extents &&
      !(obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED))
   return 2;

  return 1;
 default:
  BUG();
 }
}
