
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ client_ctx ;


 int ASSERT (int) ;
 scalar_t__ s_almost_dead_0 ;

__attribute__((used)) static int do_almost_dead(client_ctx *cx) {
  ASSERT(cx->state >= s_almost_dead_0);
  return cx->state + 1;
}
