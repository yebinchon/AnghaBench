
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct rbd_obj_request {int flags; TYPE_1__* img_request; } ;
struct TYPE_4__ {int features; } ;
struct rbd_device {TYPE_2__ header; } ;
struct TYPE_3__ {struct rbd_device* rbd_dev; } ;


 int CEPH_NOSNAP ;
 int OBJECT_EXISTS ;
 int OBJECT_PENDING ;
 int RBD_FEATURE_OBJECT_MAP ;
 int RBD_OBJ_FLAG_DELETION ;
 int rbd_object_map_update (struct rbd_obj_request*,int ,int ,int *) ;

__attribute__((used)) static int rbd_obj_write_pre_object_map(struct rbd_obj_request *obj_req)
{
 struct rbd_device *rbd_dev = obj_req->img_request->rbd_dev;
 u8 new_state;

 if (!(rbd_dev->header.features & RBD_FEATURE_OBJECT_MAP))
  return 1;

 if (obj_req->flags & RBD_OBJ_FLAG_DELETION)
  new_state = OBJECT_PENDING;
 else
  new_state = OBJECT_EXISTS;

 return rbd_object_map_update(obj_req, CEPH_NOSNAP, new_state, ((void*)0));
}
