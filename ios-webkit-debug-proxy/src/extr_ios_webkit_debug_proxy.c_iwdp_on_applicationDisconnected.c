
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rpc_t ;
typedef int rpc_status ;
typedef TYPE_1__* rpc_app_t ;
struct TYPE_3__ {int app_id; } ;


 int iwdp_remove_app_id (int ,int ) ;

rpc_status iwdp_on_applicationDisconnected(rpc_t rpc, const rpc_app_t app) {
  return iwdp_remove_app_id(rpc, app->app_id);
}
