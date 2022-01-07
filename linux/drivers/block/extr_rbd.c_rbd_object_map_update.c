
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_8__ {int oe_objno; } ;
struct rbd_obj_request {TYPE_4__ ex; int osd_reqs; TYPE_1__* img_request; } ;
struct rbd_device {int header_oloc; TYPE_3__* rbd_client; } ;
struct ceph_osd_request {int r_mtime; int r_flags; int r_base_oloc; int r_base_oid; struct rbd_obj_request* r_priv; int r_callback; int r_private_item; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_7__ {TYPE_2__* client; } ;
struct TYPE_6__ {struct ceph_osd_client osdc; } ;
struct TYPE_5__ {struct rbd_device* rbd_dev; } ;


 int CEPH_CLS_LOCK_EXCLUSIVE ;
 int CEPH_NOSNAP ;
 int CEPH_OSD_FLAG_WRITE ;
 int ENOMEM ;
 int GFP_NOIO ;
 int RBD_LOCK_NAME ;
 int ceph_cls_assert_locked (struct ceph_osd_request*,int ,int ,int ,char*,char*) ;
 int ceph_oloc_copy (int *,int *) ;
 int ceph_osdc_alloc_messages (struct ceph_osd_request*,int ) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,int *,int,int,int ) ;
 int ceph_osdc_start_request (struct ceph_osd_client*,struct ceph_osd_request*,int) ;
 int ktime_get_real_ts64 (int *) ;
 int list_add_tail (int *,int *) ;
 int rbd_cls_object_map_update (struct ceph_osd_request*,int,int ,int ,int const*) ;
 int rbd_object_map_callback ;
 int rbd_object_map_name (struct rbd_device*,int ,int *) ;
 int update_needed (struct rbd_device*,int ,int ) ;

__attribute__((used)) static int rbd_object_map_update(struct rbd_obj_request *obj_req, u64 snap_id,
     u8 new_state, const u8 *current_state)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 struct ceph_osd_request *req;
 int num_ops = 1;
 int which = 0;
 int ret;

 if (snap_id == CEPH_NOSNAP) {
  if (!update_needed(rbd_dev, obj_req->ex.oe_objno, new_state))
   return 1;

  num_ops++;
 }

 req = ceph_osdc_alloc_request(osdc, ((void*)0), num_ops, 0, GFP_NOIO);
 if (!req)
  return -ENOMEM;

 list_add_tail(&req->r_private_item, &obj_req->osd_reqs);
 req->r_callback = rbd_object_map_callback;
 req->r_priv = obj_req;

 rbd_object_map_name(rbd_dev, snap_id, &req->r_base_oid);
 ceph_oloc_copy(&req->r_base_oloc, &rbd_dev->header_oloc);
 req->r_flags = CEPH_OSD_FLAG_WRITE;
 ktime_get_real_ts64(&req->r_mtime);

 if (snap_id == CEPH_NOSNAP) {




  ret = ceph_cls_assert_locked(req, which++, RBD_LOCK_NAME,
          CEPH_CLS_LOCK_EXCLUSIVE, "", "");
  if (ret)
   return ret;
 }

 ret = rbd_cls_object_map_update(req, which, obj_req->ex.oe_objno,
     new_state, current_state);
 if (ret)
  return ret;

 ret = ceph_osdc_alloc_messages(req, GFP_NOIO);
 if (ret)
  return ret;

 ceph_osdc_start_request(osdc, req, 0);
 return 0;
}
