
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_obj_request {int read_state; } ;


 int RBD_OBJ_READ_START ;

__attribute__((used)) static int rbd_obj_init_read(struct rbd_obj_request *obj_req)
{
 obj_req->read_state = RBD_OBJ_READ_START;
 return 0;
}
