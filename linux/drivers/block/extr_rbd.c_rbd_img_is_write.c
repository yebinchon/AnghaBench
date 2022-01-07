
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int op_type; } ;


 int BUG () ;





__attribute__((used)) static bool rbd_img_is_write(struct rbd_img_request *img_req)
{
 switch (img_req->op_type) {
 case 130:
  return 0;
 case 129:
 case 131:
 case 128:
  return 1;
 default:
  BUG();
 }
}
