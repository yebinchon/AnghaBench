
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rpc_app_t ;


 int free (scalar_t__*) ;
 int rpc_free_app (int ) ;

void rpc_free_apps(rpc_app_t *apps) {
  if (apps) {
    rpc_app_t *a = apps;
    while (*a) {
      rpc_free_app(*a++);
    }
    free(apps);
  }
}
