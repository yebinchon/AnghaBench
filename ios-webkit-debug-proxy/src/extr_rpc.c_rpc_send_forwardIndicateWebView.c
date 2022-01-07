
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;


 int RPC_ERROR ;
 int plist_dict_set_item (int ,char*,int ) ;
 int plist_free (int ) ;
 int plist_new_bool (int) ;
 int plist_new_string (char const*) ;
 int plist_new_uint (int ) ;
 int rpc_new_args (char const*) ;
 int rpc_send_msg (int ,char const*,int ) ;

rpc_status rpc_send_forwardIndicateWebView(rpc_t self, const char *connection_id,
    const char *app_id, uint32_t page_id, bool is_enabled) {
  if (!connection_id || !app_id) {
    return RPC_ERROR;
  }
  const char *selector = "_rpc_forwardIndicateWebView:";
  plist_t args = rpc_new_args(connection_id);
  plist_dict_set_item(args, "WIRApplicationIdentifierKey",
      plist_new_string(app_id));
  plist_dict_set_item(args, "WIRPageIdentifierKey",
      plist_new_uint(page_id));
  plist_dict_set_item(args, "WIRIndicateEnabledKey",
      plist_new_bool(is_enabled));
  rpc_status ret = rpc_send_msg(self, selector, args);
  plist_free(args);
  return ret;
}
