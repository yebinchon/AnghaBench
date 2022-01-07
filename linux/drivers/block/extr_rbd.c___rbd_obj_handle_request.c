
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oe_len; int oe_off; int oe_objno; } ;
struct rbd_obj_request {TYPE_1__ ex; int state_mutex; struct rbd_img_request* img_request; } ;
struct rbd_img_request {int op_type; struct rbd_device* rbd_dev; } ;
struct rbd_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int obj_op_name (int ) ;
 int rbd_assert (int) ;
 int rbd_img_is_write (struct rbd_img_request*) ;
 int rbd_obj_advance_read (struct rbd_obj_request*,int*) ;
 int rbd_obj_advance_write (struct rbd_obj_request*,int*) ;
 int rbd_warn (struct rbd_device*,char*,int ,int ,int ,int ,int) ;

__attribute__((used)) static bool __rbd_obj_handle_request(struct rbd_obj_request *obj_req,
         int *result)
{
 struct rbd_img_request *img_req = obj_req->img_request;
 struct rbd_device *rbd_dev = img_req->rbd_dev;
 bool done;

 mutex_lock(&obj_req->state_mutex);
 if (!rbd_img_is_write(img_req))
  done = rbd_obj_advance_read(obj_req, result);
 else
  done = rbd_obj_advance_write(obj_req, result);
 mutex_unlock(&obj_req->state_mutex);

 if (done && *result) {
  rbd_assert(*result < 0);
  rbd_warn(rbd_dev, "%s at objno %llu %llu~%llu result %d",
    obj_op_name(img_req->op_type), obj_req->ex.oe_objno,
    obj_req->ex.oe_off, obj_req->ex.oe_len, *result);
 }
 return done;
}
