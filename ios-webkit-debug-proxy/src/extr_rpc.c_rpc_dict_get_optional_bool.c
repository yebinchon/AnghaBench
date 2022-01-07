
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpc_status ;
typedef int plist_t ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ plist_dict_get_item (int const,char const*) ;
 int rpc_dict_get_required_bool (int const,char const*,int*) ;

rpc_status rpc_dict_get_optional_bool(const plist_t node, const char *key,
    bool *to_value) {
  if (!node || !key || !to_value) {
    return RPC_ERROR;
  }
  return (plist_dict_get_item(node, key) ?
      rpc_dict_get_required_bool(node, key, to_value) : RPC_SUCCESS);
}
