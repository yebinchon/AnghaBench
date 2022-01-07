
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int result; int num_pending; } ;
struct rbd_img_request {int state; TYPE_1__ pending; struct rbd_device* rbd_dev; } ;
struct rbd_device {int dummy; } ;


 int BUG () ;




 int __rbd_is_lock_owner (struct rbd_device*) ;
 int need_exclusive_lock (struct rbd_img_request*) ;
 int pending_result_dec (TYPE_1__*,int*) ;
 int rbd_assert (int) ;
 int rbd_img_exclusive_lock (struct rbd_img_request*) ;
 int rbd_img_object_requests (struct rbd_img_request*) ;

__attribute__((used)) static bool rbd_img_advance(struct rbd_img_request *img_req, int *result)
{
 struct rbd_device *rbd_dev = img_req->rbd_dev;
 int ret;

again:
 switch (img_req->state) {
 case 129:
  rbd_assert(!*result);

  ret = rbd_img_exclusive_lock(img_req);
  if (ret < 0) {
   *result = ret;
   return 1;
  }
  img_req->state = 131;
  if (ret > 0)
   goto again;
  return 0;
 case 131:
  if (*result)
   return 1;

  rbd_assert(!need_exclusive_lock(img_req) ||
      __rbd_is_lock_owner(rbd_dev));

  rbd_img_object_requests(img_req);
  if (!img_req->pending.num_pending) {
   *result = img_req->pending.result;
   img_req->state = 130;
   goto again;
  }
  img_req->state = 128;
  return 0;
 case 128:
  if (!pending_result_dec(&img_req->pending, result))
   return 0;

 case 130:
  return 1;
 default:
  BUG();
 }
}
