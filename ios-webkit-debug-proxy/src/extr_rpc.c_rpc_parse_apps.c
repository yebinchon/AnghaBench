
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rpc_status ;
typedef TYPE_1__* rpc_app_t ;
typedef int * plist_t ;
typedef char* plist_dict_iter ;
typedef int int8_t ;
struct TYPE_5__ {int app_id; } ;


 scalar_t__ PLIST_DICT ;
 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ calloc (size_t,int) ;
 int free (char*) ;
 size_t plist_dict_get_size (int * const) ;
 int plist_dict_new_iter (int * const,char**) ;
 int plist_dict_next_item (int * const,char*,char**,int **) ;
 scalar_t__ plist_get_node_type (int * const) ;
 int rpc_free_apps (TYPE_1__**) ;
 int rpc_parse_app (int *,TYPE_1__**) ;
 int strcmp (char*,int ) ;

rpc_status rpc_parse_apps(const plist_t node, rpc_app_t **to_apps) {
  if (!to_apps) {
    return RPC_ERROR;
  }
  *to_apps = ((void*)0);
  if (plist_get_node_type(node) != PLIST_DICT) {
    return RPC_ERROR;
  }
  size_t length = plist_dict_get_size(node);
  rpc_app_t *apps = (rpc_app_t *)calloc(length + 1, sizeof(rpc_app_t));
  if (!apps) {
    return RPC_ERROR;
  }
  plist_dict_iter iter = ((void*)0);
  plist_dict_new_iter(node, &iter);
  int8_t is_ok = (iter != ((void*)0));
  size_t i;
  for (i = 0; i < length && is_ok; i++) {
    char *key = ((void*)0);
    plist_t value = ((void*)0);
    plist_dict_next_item(node, iter, &key, &value);
    rpc_app_t app = ((void*)0);
    is_ok = (key && !rpc_parse_app(value, &app) &&
        !strcmp(key, app->app_id));
    apps[i] = app;
    free(key);
  }
  free(iter);
  if (!is_ok) {
    rpc_free_apps(apps);
    return RPC_ERROR;
  }
  *to_apps = apps;
  return RPC_SUCCESS;
}
