
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpc_status ;
typedef int plist_t ;


 scalar_t__ PLIST_STRING ;
 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int plist_dict_get_item (int const,char const*) ;
 scalar_t__ plist_get_node_type (int ) ;
 int plist_get_string_val (int ,char**) ;

rpc_status rpc_dict_get_required_string(const plist_t node, const char *key,
    char **to_value) {
  if (!node || !key || !to_value) {
    return RPC_ERROR;
  }
  plist_t item = plist_dict_get_item(node, key);
  if (plist_get_node_type(item) != PLIST_STRING) {
    return RPC_ERROR;
  }
  plist_get_string_val(item, to_value);
  return RPC_SUCCESS;
}
