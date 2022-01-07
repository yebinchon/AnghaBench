
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oe_len; int oe_off; } ;
struct rbd_obj_request {int flags; TYPE_1__ ex; int num_img_extents; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;


 int CEPH_OSD_OP_DELETE ;
 int RBD_OBJ_FLAG_DELETION ;
 int osd_req_op_extent_init (struct ceph_osd_request*,int,int ,int ,int ,int ,int ) ;
 int osd_req_op_init (struct ceph_osd_request*,int,int ,int ) ;
 int rbd_assert (int) ;
 scalar_t__ rbd_obj_is_entire (struct rbd_obj_request*) ;
 int truncate_or_zero_opcode (struct rbd_obj_request*) ;

__attribute__((used)) static void __rbd_osd_setup_discard_ops(struct ceph_osd_request *osd_req,
     int which)
{
 struct rbd_obj_request *obj_req = osd_req->r_priv;

 if (rbd_obj_is_entire(obj_req) && !obj_req->num_img_extents) {
  rbd_assert(obj_req->flags & RBD_OBJ_FLAG_DELETION);
  osd_req_op_init(osd_req, which, CEPH_OSD_OP_DELETE, 0);
 } else {
  osd_req_op_extent_init(osd_req, which,
           truncate_or_zero_opcode(obj_req),
           obj_req->ex.oe_off, obj_req->ex.oe_len,
           0, 0);
 }
}
