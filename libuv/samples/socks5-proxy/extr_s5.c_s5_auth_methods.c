
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int methods; } ;
typedef TYPE_1__ s5_ctx ;



unsigned int s5_auth_methods(const s5_ctx *cx) {
  return cx->methods;
}
