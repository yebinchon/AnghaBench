
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_obj_request {int img_request; } ;


 scalar_t__ __rbd_obj_handle_request (struct rbd_obj_request*,int*) ;
 int rbd_img_handle_request (int ,int) ;

__attribute__((used)) static void rbd_obj_handle_request(struct rbd_obj_request *obj_req, int result)
{
 if (__rbd_obj_handle_request(obj_req, &result))
  rbd_img_handle_request(obj_req->img_request, result);
}
