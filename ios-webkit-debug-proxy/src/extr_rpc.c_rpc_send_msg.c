
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
struct TYPE_4__ {int (* send_plist ) (TYPE_1__*,int ) ;} ;


 int RPC_ERROR ;
 int plist_copy (int ) ;
 int plist_dict_set_item (int ,char*,int ) ;
 int plist_free (int ) ;
 int plist_new_dict () ;
 int plist_new_string (char const*) ;
 int stub1 (TYPE_1__*,int ) ;

rpc_status rpc_send_msg(rpc_t self, const char *selector, plist_t args) {
  if (!selector || !args) {
    return RPC_ERROR;
  }
  plist_t rpc_dict = plist_new_dict();
  plist_dict_set_item(rpc_dict, "__selector",
      plist_new_string(selector));
  plist_dict_set_item(rpc_dict, "__argument", plist_copy(args));
  rpc_status ret = self->send_plist(self, rpc_dict);
  plist_free(rpc_dict);
  return ret;
}
