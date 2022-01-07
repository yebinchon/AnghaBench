
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
typedef int wi_status ;
typedef TYPE_2__* rpc_t ;
typedef int plist_t ;
typedef TYPE_3__* iwdp_iwi_t ;
struct TYPE_8__ {TYPE_2__* rpc; } ;
struct TYPE_7__ {int (* recv_plist ) (TYPE_2__*,int const) ;} ;
struct TYPE_6__ {scalar_t__ state; } ;


 int stub1 (TYPE_2__*,int const) ;

wi_status iwdp_recv_plist(wi_t wi, const plist_t rpc_dict) {
  rpc_t rpc = ((iwdp_iwi_t)wi->state)->rpc;
  return rpc->recv_plist(rpc, rpc_dict);
}
