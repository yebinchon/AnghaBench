
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* wi_t ;
typedef TYPE_2__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
typedef TYPE_3__* iwdp_iwi_t ;
struct TYPE_8__ {TYPE_1__* wi; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_6__ {int (* send_plist ) (TYPE_1__*,int const) ;} ;


 int stub1 (TYPE_1__*,int const) ;

rpc_status iwdp_send_plist(rpc_t rpc, const plist_t rpc_dict) {
  wi_t wi = ((iwdp_iwi_t)rpc->state)->wi;
  return wi->send_plist(wi, rpc_dict);
}
