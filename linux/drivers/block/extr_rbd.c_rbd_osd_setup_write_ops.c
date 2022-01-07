
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_obj_request {TYPE_1__* img_request; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;
struct TYPE_2__ {int op_type; } ;


 int BUG () ;



 int __rbd_osd_setup_discard_ops (struct ceph_osd_request*,int) ;
 int __rbd_osd_setup_write_ops (struct ceph_osd_request*,int) ;
 int __rbd_osd_setup_zeroout_ops (struct ceph_osd_request*,int) ;

__attribute__((used)) static void rbd_osd_setup_write_ops(struct ceph_osd_request *osd_req,
        int which)
{
 struct rbd_obj_request *obj_req = osd_req->r_priv;

 switch (obj_req->img_request->op_type) {
 case 129:
  __rbd_osd_setup_write_ops(osd_req, which);
  break;
 case 130:
  __rbd_osd_setup_discard_ops(osd_req, which);
  break;
 case 128:
  __rbd_osd_setup_zeroout_ops(osd_req, which);
  break;
 default:
  BUG();
 }
}
