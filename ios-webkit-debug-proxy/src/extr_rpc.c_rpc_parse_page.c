
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rpc_status ;
typedef TYPE_1__* rpc_page_t ;
typedef int plist_t ;
struct TYPE_5__ {int url; int title; int connection_id; int page_id; } ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 scalar_t__ rpc_dict_get_optional_string (int const,char*,int *) ;
 scalar_t__ rpc_dict_get_required_uint (int const,char*,int *) ;
 int rpc_free_page (TYPE_1__*) ;
 TYPE_1__* rpc_new_page () ;

rpc_status rpc_parse_page(const plist_t node, rpc_page_t *to_page) {
  rpc_page_t page = (to_page ? rpc_new_page() : ((void*)0));
  if (!page ||
      rpc_dict_get_required_uint(node, "WIRPageIdentifierKey",
        &page->page_id) ||
      rpc_dict_get_optional_string(node, "WIRConnectionIdentifierKey",
        &page->connection_id) ||
      rpc_dict_get_optional_string(node, "WIRTitleKey",
        &page->title) ||
      rpc_dict_get_optional_string(node, "WIRURLKey",
        &page->url)) {
    rpc_free_page(page);
    if (to_page) {
      *to_page = ((void*)0);
    }
    return RPC_ERROR;
  }
  *to_page = page;
  return RPC_SUCCESS;
}
