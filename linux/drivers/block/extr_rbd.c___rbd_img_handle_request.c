
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int op_type; int flags; int state_mutex; struct rbd_device* rbd_dev; } ;
struct rbd_device {int lock_rwsem; } ;


 int IMG_REQ_CHILD ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_exclusive_lock (struct rbd_img_request*) ;
 int obj_op_name (int ) ;
 int rbd_assert (int) ;
 int rbd_img_advance (struct rbd_img_request*,int*) ;
 int rbd_lock_del_request (struct rbd_img_request*) ;
 int rbd_warn (struct rbd_device*,char*,char*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

__attribute__((used)) static bool __rbd_img_handle_request(struct rbd_img_request *img_req,
         int *result)
{
 struct rbd_device *rbd_dev = img_req->rbd_dev;
 bool done;

 if (need_exclusive_lock(img_req)) {
  down_read(&rbd_dev->lock_rwsem);
  mutex_lock(&img_req->state_mutex);
  done = rbd_img_advance(img_req, result);
  if (done)
   rbd_lock_del_request(img_req);
  mutex_unlock(&img_req->state_mutex);
  up_read(&rbd_dev->lock_rwsem);
 } else {
  mutex_lock(&img_req->state_mutex);
  done = rbd_img_advance(img_req, result);
  mutex_unlock(&img_req->state_mutex);
 }

 if (done && *result) {
  rbd_assert(*result < 0);
  rbd_warn(rbd_dev, "%s%s result %d",
        test_bit(IMG_REQ_CHILD, &img_req->flags) ? "child " : "",
        obj_op_name(img_req->op_type), *result);
 }
 return done;
}
