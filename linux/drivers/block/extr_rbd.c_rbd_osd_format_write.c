
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oe_off; } ;
struct rbd_obj_request {TYPE_1__ ex; } ;
struct ceph_osd_request {int r_data_offset; int r_mtime; int r_flags; struct rbd_obj_request* r_priv; } ;


 int CEPH_OSD_FLAG_WRITE ;
 int ktime_get_real_ts64 (int *) ;

__attribute__((used)) static void rbd_osd_format_write(struct ceph_osd_request *osd_req)
{
 struct rbd_obj_request *obj_request = osd_req->r_priv;

 osd_req->r_flags = CEPH_OSD_FLAG_WRITE;
 ktime_get_real_ts64(&osd_req->r_mtime);
 osd_req->r_data_offset = obj_request->ex.oe_off;
}
