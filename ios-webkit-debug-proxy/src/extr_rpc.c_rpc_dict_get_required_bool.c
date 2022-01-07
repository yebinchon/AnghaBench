
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int rpc_status ;
typedef int plist_t ;


 scalar_t__ PLIST_BOOLEAN ;
 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int plist_dict_get_item (int const,char const*) ;
 int plist_get_bool_val (int ,scalar_t__*) ;
 scalar_t__ plist_get_node_type (int ) ;

rpc_status rpc_dict_get_required_bool(const plist_t node, const char *key,
    bool *to_value) {
  if (!node || !key || !to_value) {
    return RPC_ERROR;
  }
  plist_t item = plist_dict_get_item(node, key);
  if (plist_get_node_type(item) != PLIST_BOOLEAN) {
    return RPC_ERROR;
  }
  uint8_t value = 0;
  plist_get_bool_val(item, &value);
  *to_value = (value ? 1 : 0);
  return RPC_SUCCESS;
}
