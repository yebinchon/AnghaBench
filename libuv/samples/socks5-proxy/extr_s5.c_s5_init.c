
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
typedef TYPE_1__ s5_ctx ;


 int memset (TYPE_1__*,int ,int) ;
 int s5_version ;

void s5_init(s5_ctx *cx) {
  memset(cx, 0, sizeof(*cx));
  cx->state = s5_version;
}
