
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpc_t ;
typedef int rpc_status ;


 int iwdp_add_app_id (int ,char const*) ;

rpc_status iwdp_on_applicationUpdated(rpc_t rpc,
    const char *app_id, const char *dest_id) {
  return iwdp_add_app_id(rpc, dest_id);
}
