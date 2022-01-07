
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int oe_len; } ;
struct rbd_obj_request {int read_state; TYPE_2__ ex; int num_img_extents; TYPE_1__* img_request; } ;
struct rbd_device {int parent_overlap; } ;
struct TYPE_3__ {struct rbd_device* rbd_dev; } ;


 int BUG () ;
 int ENOENT ;



 int rbd_assert (int) ;
 int rbd_obj_calc_img_extents (struct rbd_obj_request*,int) ;
 int rbd_obj_img_extents_bytes (struct rbd_obj_request*) ;
 int rbd_obj_may_exist (struct rbd_obj_request*) ;
 int rbd_obj_read_from_parent (struct rbd_obj_request*) ;
 int rbd_obj_read_object (struct rbd_obj_request*) ;
 int rbd_obj_zero_range (struct rbd_obj_request*,int,int) ;

__attribute__((used)) static bool rbd_obj_advance_read(struct rbd_obj_request *obj_req, int *result)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 int ret;

again:
 switch (obj_req->read_state) {
 case 128:
  rbd_assert(!*result);

  if (!rbd_obj_may_exist(obj_req)) {
   *result = -ENOENT;
   obj_req->read_state = 130;
   goto again;
  }

  ret = rbd_obj_read_object(obj_req);
  if (ret) {
   *result = ret;
   return 1;
  }
  obj_req->read_state = 130;
  return 0;
 case 130:
  if (*result == -ENOENT && rbd_dev->parent_overlap) {

   ret = rbd_obj_calc_img_extents(obj_req, 0);
   if (ret) {
    *result = ret;
    return 1;
   }
   if (obj_req->num_img_extents) {
    ret = rbd_obj_read_from_parent(obj_req);
    if (ret) {
     *result = ret;
     return 1;
    }
    obj_req->read_state = 129;
    return 0;
   }
  }






  if (*result == -ENOENT) {
   rbd_obj_zero_range(obj_req, 0, obj_req->ex.oe_len);
   *result = 0;
  } else if (*result >= 0) {
   if (*result < obj_req->ex.oe_len)
    rbd_obj_zero_range(obj_req, *result,
      obj_req->ex.oe_len - *result);
   else
    rbd_assert(*result == obj_req->ex.oe_len);
   *result = 0;
  }
  return 1;
 case 129:




  if (!*result) {
   u32 obj_overlap = rbd_obj_img_extents_bytes(obj_req);

   if (obj_overlap < obj_req->ex.oe_len)
    rbd_obj_zero_range(obj_req, obj_overlap,
         obj_req->ex.oe_len - obj_overlap);
  }
  return 1;
 default:
  BUG();
 }
}
