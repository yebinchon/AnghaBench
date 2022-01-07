
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int oe_objno; } ;
struct rbd_obj_request {TYPE_6__ ex; int osd_reqs; TYPE_1__* img_request; } ;
struct TYPE_12__ {int object_prefix; } ;
struct TYPE_11__ {int pool_id; } ;
struct rbd_device {int image_format; TYPE_5__ header; TYPE_4__ layout; int header_oloc; TYPE_3__* rbd_client; } ;
struct ceph_snap_context {int dummy; } ;
struct TYPE_14__ {int pool; } ;
struct ceph_osd_request {int r_base_oid; TYPE_7__ r_base_oloc; struct rbd_obj_request* r_priv; int r_callback; int r_private_item; } ;
struct ceph_osd_client {int dummy; } ;
struct TYPE_10__ {TYPE_2__* client; } ;
struct TYPE_9__ {struct ceph_osd_client osdc; } ;
struct TYPE_8__ {struct rbd_device* rbd_dev; } ;


 int ENOMEM ;
 struct ceph_osd_request* ERR_PTR (int) ;
 int GFP_NOIO ;
 char* RBD_V1_DATA_FORMAT ;
 char* RBD_V2_DATA_FORMAT ;
 int ceph_oid_aprintf (int *,int ,char const*,int ,int ) ;
 int ceph_oloc_copy (TYPE_7__*,int *) ;
 struct ceph_osd_request* ceph_osdc_alloc_request (struct ceph_osd_client*,struct ceph_snap_context*,int,int,int ) ;
 int list_add_tail (int *,int *) ;
 int rbd_osd_req_callback ;

__attribute__((used)) static struct ceph_osd_request *
__rbd_obj_add_osd_request(struct rbd_obj_request *obj_req,
     struct ceph_snap_context *snapc, int num_ops)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 struct ceph_osd_client *osdc = &rbd_dev->rbd_client->client->osdc;
 struct ceph_osd_request *req;
 const char *name_format = rbd_dev->image_format == 1 ?
          RBD_V1_DATA_FORMAT : RBD_V2_DATA_FORMAT;
 int ret;

 req = ceph_osdc_alloc_request(osdc, snapc, num_ops, 0, GFP_NOIO);
 if (!req)
  return ERR_PTR(-ENOMEM);

 list_add_tail(&req->r_private_item, &obj_req->osd_reqs);
 req->r_callback = rbd_osd_req_callback;
 req->r_priv = obj_req;





 ceph_oloc_copy(&req->r_base_oloc, &rbd_dev->header_oloc);
 req->r_base_oloc.pool = rbd_dev->layout.pool_id;

 ret = ceph_oid_aprintf(&req->r_base_oid, GFP_NOIO, name_format,
          rbd_dev->header.object_prefix,
          obj_req->ex.oe_objno);
 if (ret)
  return ERR_PTR(ret);

 return req;
}
