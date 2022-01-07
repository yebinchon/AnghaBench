
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rbd_obj_request {int dummy; } ;


 int CEPH_OSD_OP_TRUNCATE ;
 int CEPH_OSD_OP_ZERO ;
 scalar_t__ rbd_obj_is_tail (struct rbd_obj_request*) ;

__attribute__((used)) static u16 truncate_or_zero_opcode(struct rbd_obj_request *obj_req)
{
 return rbd_obj_is_tail(obj_req) ? CEPH_OSD_OP_TRUNCATE :
       CEPH_OSD_OP_ZERO;
}
