
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rbd_obj_request {int num_img_extents; int img_extents; TYPE_1__* img_request; } ;
struct rbd_device {int parent_overlap; } ;
struct TYPE_2__ {struct rbd_device* rbd_dev; } ;


 int MODS_ONLY ;
 int prune_extents (int ,int *,int ) ;
 int rbd_assert (int ) ;
 int rbd_obj_copyup_current_snapc (struct rbd_obj_request*,int ) ;
 int rbd_obj_img_extents_bytes (struct rbd_obj_request*) ;
 int rbd_obj_read_from_parent (struct rbd_obj_request*) ;
 int setup_copyup_bvecs (struct rbd_obj_request*,int ) ;

__attribute__((used)) static int rbd_obj_copyup_read_parent(struct rbd_obj_request *obj_req)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 int ret;

 rbd_assert(obj_req->num_img_extents);
 prune_extents(obj_req->img_extents, &obj_req->num_img_extents,
        rbd_dev->parent_overlap);
 if (!obj_req->num_img_extents) {






  return rbd_obj_copyup_current_snapc(obj_req, MODS_ONLY);
 }

 ret = setup_copyup_bvecs(obj_req, rbd_obj_img_extents_bytes(obj_req));
 if (ret)
  return ret;

 return rbd_obj_read_from_parent(obj_req);
}
