
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fun_pos; } ;
struct TYPE_4__ {TYPE_1__ methods; } ;


 TYPE_2__* CC ;
 size_t RPC_FUN_ON_RECEIVE ;
 int RPC_FUN_START (int ,int ) ;

int on_receive (void) {
  return RPC_FUN_START(CC->methods.fun_pos[RPC_FUN_ON_RECEIVE], 0);
}
