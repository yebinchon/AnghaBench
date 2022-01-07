
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rpc_status ;
typedef TYPE_1__* rpc_app_t ;
struct TYPE_5__ {int is_proxy; void* app_name; void* app_id; } ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 TYPE_1__* rpc_new_app () ;
 void* strdup (void*) ;

rpc_status rpc_copy_app(rpc_app_t app, rpc_app_t *to_app) {
  rpc_app_t new_app = (to_app ? rpc_new_app() : ((void*)0));
  if (!new_app) {
    return RPC_ERROR;
  }

  new_app->app_id = strdup(app->app_id);
  new_app->app_name = strdup(app->app_name);
  new_app->is_proxy = app->is_proxy;
  *to_app = new_app;
  return RPC_SUCCESS;
}
