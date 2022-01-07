
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_obj_request {TYPE_1__* img_request; } ;
struct ceph_osd_request {int r_snapid; int r_flags; struct rbd_obj_request* r_priv; } ;
struct TYPE_2__ {int snap_id; } ;


 int CEPH_OSD_FLAG_READ ;

__attribute__((used)) static void rbd_osd_format_read(struct ceph_osd_request *osd_req)
{
 struct rbd_obj_request *obj_request = osd_req->r_priv;

 osd_req->r_flags = CEPH_OSD_FLAG_READ;
 osd_req->r_snapid = obj_request->img_request->snap_id;
}
