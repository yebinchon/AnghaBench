
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int rpc_status ;
typedef int plist_t ;


 scalar_t__ PLIST_UINT ;
 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ UINT32_MAX ;
 int plist_dict_get_item (int const,char const*) ;
 scalar_t__ plist_get_node_type (int ) ;
 int plist_get_uint_val (int ,scalar_t__*) ;

rpc_status rpc_dict_get_required_uint(const plist_t node, const char *key,
    uint32_t *to_value) {
  if (!node || !key || !to_value) {
    return RPC_ERROR;
  }
  plist_t item = plist_dict_get_item(node, key);
  if (plist_get_node_type(item) != PLIST_UINT) {
    return RPC_ERROR;
  }
  uint64_t value;
  plist_get_uint_val(item, &value);
  if (value > UINT32_MAX) {
    return RPC_ERROR;
  }
  *to_value = (uint32_t)value;
  return RPC_SUCCESS;
}
