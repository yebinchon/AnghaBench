
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ s5_ctx ;
typedef int s5_auth_method ;


 int EINVAL ;


 int s5_auth_pw_version ;
 int s5_req_version ;

int s5_select_auth(s5_ctx *cx, s5_auth_method method) {
  int err;

  err = 0;
  switch (method) {
    case 129:
      cx->state = s5_req_version;
      break;
    case 128:
      cx->state = s5_auth_pw_version;
      break;
    default:
      err = -EINVAL;
  }

  return err;
}
