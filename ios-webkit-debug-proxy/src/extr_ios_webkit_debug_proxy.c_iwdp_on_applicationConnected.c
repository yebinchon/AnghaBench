
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rpc_t ;
typedef int rpc_status ;
typedef TYPE_1__* rpc_app_t ;
struct TYPE_4__ {int app_id; } ;


 int iwdp_add_app_id (int ,int ) ;
 int rpc_set_app (int ,TYPE_1__* const) ;

rpc_status iwdp_on_applicationConnected(rpc_t rpc, const rpc_app_t app) {
  rpc_set_app(rpc, app);
  return iwdp_add_app_id(rpc, app->app_id);
}
