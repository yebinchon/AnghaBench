
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;


 int plist_dict_get_item (int const,char*) ;
 int plist_get_string_val (int ,char**) ;
 int rpc_recv_msg (int ,char*,int ) ;

rpc_status rpc_recv_plist(rpc_t self, const plist_t rpc_dict) {
  char *selector = ((void*)0);
  plist_get_string_val(plist_dict_get_item(rpc_dict, "__selector"), &selector);
  plist_t args = plist_dict_get_item(rpc_dict, "__argument");
  return rpc_recv_msg(self, selector, args);
}
