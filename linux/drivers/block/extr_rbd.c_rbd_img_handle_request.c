
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct rbd_obj_request {struct rbd_img_request* img_request; } ;
struct rbd_img_request {struct request* rq; struct rbd_obj_request* obj_request; int flags; } ;


 int IMG_REQ_CHILD ;
 int __rbd_img_handle_request (struct rbd_img_request*,int*) ;
 scalar_t__ __rbd_obj_handle_request (struct rbd_obj_request*,int*) ;
 int blk_mq_end_request (struct request*,int ) ;
 int errno_to_blk_status (int) ;
 int rbd_img_request_put (struct rbd_img_request*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rbd_img_handle_request(struct rbd_img_request *img_req, int result)
{
again:
 if (!__rbd_img_handle_request(img_req, &result))
  return;

 if (test_bit(IMG_REQ_CHILD, &img_req->flags)) {
  struct rbd_obj_request *obj_req = img_req->obj_request;

  rbd_img_request_put(img_req);
  if (__rbd_obj_handle_request(obj_req, &result)) {
   img_req = obj_req->img_request;
   goto again;
  }
 } else {
  struct request *rq = img_req->rq;

  rbd_img_request_put(img_req);
  blk_mq_end_request(rq, errno_to_blk_status(result));
 }
}
