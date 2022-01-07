
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int oe_len; int oe_off; } ;
struct rbd_obj_request {int flags; TYPE_1__ ex; scalar_t__ num_img_extents; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;


 int CEPH_OSD_OP_CREATE ;
 int CEPH_OSD_OP_DELETE ;
 scalar_t__ CEPH_OSD_OP_TRUNCATE ;
 int RBD_OBJ_FLAG_COPYUP_ENABLED ;
 int RBD_OBJ_FLAG_DELETION ;
 int osd_req_op_extent_init (struct ceph_osd_request*,int,scalar_t__,int ,int ,int ,int ) ;
 int osd_req_op_init (struct ceph_osd_request*,int ,int ,int ) ;
 int rbd_assert (int) ;
 scalar_t__ rbd_obj_is_entire (struct rbd_obj_request*) ;
 scalar_t__ truncate_or_zero_opcode (struct rbd_obj_request*) ;

__attribute__((used)) static void __rbd_osd_setup_zeroout_ops(struct ceph_osd_request *osd_req,
     int which)
{
 struct rbd_obj_request *obj_req = osd_req->r_priv;
 u16 opcode;

 if (rbd_obj_is_entire(obj_req)) {
  if (obj_req->num_img_extents) {
   if (!(obj_req->flags & RBD_OBJ_FLAG_COPYUP_ENABLED))
    osd_req_op_init(osd_req, which++,
      CEPH_OSD_OP_CREATE, 0);
   opcode = CEPH_OSD_OP_TRUNCATE;
  } else {
   rbd_assert(obj_req->flags & RBD_OBJ_FLAG_DELETION);
   osd_req_op_init(osd_req, which++,
     CEPH_OSD_OP_DELETE, 0);
   opcode = 0;
  }
 } else {
  opcode = truncate_or_zero_opcode(obj_req);
 }

 if (opcode)
  osd_req_op_extent_init(osd_req, which, opcode,
           obj_req->ex.oe_off, obj_req->ex.oe_len,
           0, 0);
}
