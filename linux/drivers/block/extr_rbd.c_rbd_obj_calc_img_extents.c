
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oe_len; int oe_off; int oe_objno; } ;
struct rbd_obj_request {int num_img_extents; int img_extents; TYPE_1__ ex; TYPE_2__* img_request; } ;
struct TYPE_6__ {int object_size; } ;
struct rbd_device {int parent_overlap; TYPE_3__ layout; } ;
struct TYPE_5__ {struct rbd_device* rbd_dev; } ;


 int ceph_extent_to_file (TYPE_3__*,int ,int ,int ,int *,int *) ;
 int prune_extents (int ,int *,int ) ;

__attribute__((used)) static int rbd_obj_calc_img_extents(struct rbd_obj_request *obj_req,
        bool entire)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 int ret;

 if (!rbd_dev->parent_overlap)
  return 0;

 ret = ceph_extent_to_file(&rbd_dev->layout, obj_req->ex.oe_objno,
      entire ? 0 : obj_req->ex.oe_off,
      entire ? rbd_dev->layout.object_size :
       obj_req->ex.oe_len,
      &obj_req->img_extents,
      &obj_req->num_img_extents);
 if (ret)
  return ret;

 prune_extents(obj_req->img_extents, &obj_req->num_img_extents,
        rbd_dev->parent_overlap);
 return 0;
}
