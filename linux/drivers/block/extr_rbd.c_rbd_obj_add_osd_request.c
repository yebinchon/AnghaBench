
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_obj_request {TYPE_1__* img_request; } ;
struct ceph_osd_request {int dummy; } ;
struct TYPE_2__ {int snapc; } ;


 struct ceph_osd_request* __rbd_obj_add_osd_request (struct rbd_obj_request*,int ,int) ;

__attribute__((used)) static struct ceph_osd_request *
rbd_obj_add_osd_request(struct rbd_obj_request *obj_req, int num_ops)
{
 return __rbd_obj_add_osd_request(obj_req, obj_req->img_request->snapc,
      num_ops);
}
