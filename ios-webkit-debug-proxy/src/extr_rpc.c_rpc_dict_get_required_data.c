
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int rpc_status ;
typedef int plist_t ;


 scalar_t__ PLIST_DATA ;
 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ UINT32_MAX ;
 int free (char*) ;
 int plist_dict_get_item (int const,char const*) ;
 int plist_get_data_val (int ,char**,scalar_t__*) ;
 scalar_t__ plist_get_node_type (int ) ;

rpc_status rpc_dict_get_required_data(const plist_t node, const char *key,
    char **to_value, size_t *to_length) {
  if (!node || !key || !to_value || !to_length) {
    return RPC_ERROR;
  }
  *to_value = ((void*)0);
  *to_length = 0;
  plist_t item = plist_dict_get_item(node, key);
  if (plist_get_node_type(item) != PLIST_DATA) {
    return RPC_ERROR;
  }
  char *data = ((void*)0);
  uint64_t length = 0;
  plist_get_data_val(item, &data, &length);
  if (length > UINT32_MAX) {
    free(data);
    return RPC_ERROR;
  }
  *to_value = data;
  *to_length = (size_t)length;
  return RPC_SUCCESS;
}
