
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
struct TYPE_4__ {int (* on_reportSetup ) (TYPE_1__*) ;} ;


 scalar_t__ PLIST_DICT ;
 int RPC_ERROR ;
 scalar_t__ plist_get_node_type (int const) ;
 int stub1 (TYPE_1__*) ;

rpc_status rpc_recv_reportSetup(rpc_t self, const plist_t args) {
  if (plist_get_node_type(args) != PLIST_DICT) {
    return RPC_ERROR;
  }
  return self->on_reportSetup(self);
}
