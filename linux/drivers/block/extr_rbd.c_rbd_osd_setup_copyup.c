
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rbd_obj_request {int copyup_bvec_count; int copyup_bvecs; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;


 int osd_req_op_cls_init (struct ceph_osd_request*,int,char*,char*) ;
 int osd_req_op_cls_request_data_bvecs (struct ceph_osd_request*,int,int ,int ,int ) ;

__attribute__((used)) static int rbd_osd_setup_copyup(struct ceph_osd_request *osd_req, int which,
    u32 bytes)
{
 struct rbd_obj_request *obj_req = osd_req->r_priv;
 int ret;

 ret = osd_req_op_cls_init(osd_req, which, "rbd", "copyup");
 if (ret)
  return ret;

 osd_req_op_cls_request_data_bvecs(osd_req, which, obj_req->copyup_bvecs,
       obj_req->copyup_bvec_count, bytes);
 return 0;
}
