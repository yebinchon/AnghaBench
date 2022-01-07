
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int oe_len; int oe_off; } ;
struct rbd_obj_request {int flags; TYPE_2__ ex; TYPE_3__* img_request; } ;
struct TYPE_4__ {int object_size; } ;
struct rbd_device {TYPE_1__ layout; } ;
struct ceph_osd_request {struct rbd_obj_request* r_priv; } ;
struct TYPE_6__ {struct rbd_device* rbd_dev; } ;


 int CEPH_OSD_OP_WRITE ;
 int CEPH_OSD_OP_WRITEFULL ;
 int RBD_OBJ_FLAG_MAY_EXIST ;
 int osd_req_op_alloc_hint_init (struct ceph_osd_request*,int ,int ,int ) ;
 int osd_req_op_extent_init (struct ceph_osd_request*,int,int ,int ,int ,int ,int ) ;
 scalar_t__ rbd_obj_is_entire (struct rbd_obj_request*) ;
 int rbd_osd_setup_data (struct ceph_osd_request*,int) ;
 int use_object_map (struct rbd_device*) ;

__attribute__((used)) static void __rbd_osd_setup_write_ops(struct ceph_osd_request *osd_req,
          int which)
{
 struct rbd_obj_request *obj_req = osd_req->r_priv;
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 u16 opcode;

 if (!use_object_map(rbd_dev) ||
     !(obj_req->flags & RBD_OBJ_FLAG_MAY_EXIST)) {
  osd_req_op_alloc_hint_init(osd_req, which++,
        rbd_dev->layout.object_size,
        rbd_dev->layout.object_size);
 }

 if (rbd_obj_is_entire(obj_req))
  opcode = CEPH_OSD_OP_WRITEFULL;
 else
  opcode = CEPH_OSD_OP_WRITE;

 osd_req_op_extent_init(osd_req, which, opcode,
          obj_req->ex.oe_off, obj_req->ex.oe_len, 0, 0);
 rbd_osd_setup_data(osd_req, which);
}
