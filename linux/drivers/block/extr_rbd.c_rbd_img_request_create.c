
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_img_request {int op_type; int kref; int state_mutex; int object_extents; int lock_item; struct ceph_snap_context* snapc; int snap_id; struct rbd_device* rbd_dev; } ;
struct rbd_device {TYPE_1__* spec; } ;
struct ceph_snap_context {int dummy; } ;
typedef enum obj_operation_type { ____Placeholder_obj_operation_type } obj_operation_type ;
struct TYPE_2__ {int snap_id; } ;


 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int img_request_layered_set (struct rbd_img_request*) ;
 struct rbd_img_request* kmem_cache_zalloc (int ,int ) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 scalar_t__ rbd_dev_parent_get (struct rbd_device*) ;
 int rbd_img_is_write (struct rbd_img_request*) ;
 int rbd_img_request_cache ;

__attribute__((used)) static struct rbd_img_request *rbd_img_request_create(
     struct rbd_device *rbd_dev,
     enum obj_operation_type op_type,
     struct ceph_snap_context *snapc)
{
 struct rbd_img_request *img_request;

 img_request = kmem_cache_zalloc(rbd_img_request_cache, GFP_NOIO);
 if (!img_request)
  return ((void*)0);

 img_request->rbd_dev = rbd_dev;
 img_request->op_type = op_type;
 if (!rbd_img_is_write(img_request))
  img_request->snap_id = rbd_dev->spec->snap_id;
 else
  img_request->snapc = snapc;

 if (rbd_dev_parent_get(rbd_dev))
  img_request_layered_set(img_request);

 INIT_LIST_HEAD(&img_request->lock_item);
 INIT_LIST_HEAD(&img_request->object_extents);
 mutex_init(&img_request->state_mutex);
 kref_init(&img_request->kref);

 return img_request;
}
