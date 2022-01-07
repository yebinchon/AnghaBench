
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fun_pos; } ;
struct TYPE_4__ {TYPE_1__ methods; } ;


 TYPE_2__* CurConf ;
 int RPC_CONF_FUN_START (int ,void**) ;
 size_t RPC_FUN_CUSTOM_OP ;

void custom_op_execute (int op) {
  void *T[3];
  T[0] = (void *)(long)op;
  RPC_CONF_FUN_START(CurConf->methods.fun_pos[RPC_FUN_CUSTOM_OP], T);
}
