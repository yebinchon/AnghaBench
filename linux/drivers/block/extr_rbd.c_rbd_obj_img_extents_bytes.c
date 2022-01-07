
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rbd_obj_request {int num_img_extents; int img_extents; } ;


 int ceph_file_extents_bytes (int ,int ) ;

__attribute__((used)) static u64 rbd_obj_img_extents_bytes(struct rbd_obj_request *obj_req)
{
 return ceph_file_extents_bytes(obj_req->img_extents,
           obj_req->num_img_extents);
}
