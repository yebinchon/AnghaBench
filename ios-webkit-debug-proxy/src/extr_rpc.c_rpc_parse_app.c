
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rpc_status ;
typedef TYPE_1__* rpc_app_t ;
typedef int plist_t ;
struct TYPE_5__ {int is_proxy; int app_name; int app_id; } ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ rpc_dict_get_optional_bool (int const,char*,int *) ;
 scalar_t__ rpc_dict_get_optional_string (int const,char*,int *) ;
 scalar_t__ rpc_dict_get_required_string (int const,char*,int *) ;
 int rpc_free_app (TYPE_1__*) ;
 TYPE_1__* rpc_new_app () ;

rpc_status rpc_parse_app(const plist_t node, rpc_app_t *to_app) {
  rpc_app_t app = (to_app ? rpc_new_app() : ((void*)0));
  if (!app ||
      rpc_dict_get_required_string(node, "WIRApplicationIdentifierKey",
        &app->app_id) ||
      rpc_dict_get_optional_string(node, "WIRApplicationNameKey",
        &app->app_name) ||
      rpc_dict_get_optional_bool(node, "WIRIsApplicationProxyKey",
        &app->is_proxy)) {
    rpc_free_app(app);
    if (to_app) {
      *to_app = ((void*)0);
    }
    return RPC_ERROR;
  }
  *to_app = app;
  return RPC_SUCCESS;
}
