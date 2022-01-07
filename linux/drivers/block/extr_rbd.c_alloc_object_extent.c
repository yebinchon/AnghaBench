
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_object_extent {int dummy; } ;
struct rbd_obj_request {struct ceph_object_extent ex; } ;
struct rbd_img_request {int dummy; } ;


 int rbd_img_obj_request_add (struct rbd_img_request*,struct rbd_obj_request*) ;
 struct rbd_obj_request* rbd_obj_request_create () ;

__attribute__((used)) static struct ceph_object_extent *alloc_object_extent(void *arg)
{
 struct rbd_img_request *img_req = arg;
 struct rbd_obj_request *obj_req;

 obj_req = rbd_obj_request_create();
 if (!obj_req)
  return ((void*)0);

 rbd_img_obj_request_add(img_req, obj_req);
 return &obj_req->ex;
}
