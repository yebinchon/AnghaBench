
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int rpc_page_t ;
typedef int plist_t ;
struct TYPE_4__ {int (* on_applicationSentListing ) (TYPE_1__*,char*,int *) ;} ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int free (char*) ;
 int plist_dict_get_item (int const,char*) ;
 int rpc_dict_get_required_string (int const,char*,char**) ;
 int rpc_free_pages (int *) ;
 int rpc_parse_pages (int ,int **) ;
 int stub1 (TYPE_1__*,char*,int *) ;

rpc_status rpc_recv_applicationSentListing(rpc_t self, const plist_t args) {
  char *app_id = ((void*)0);
  rpc_page_t *pages = ((void*)0);
  plist_t item = plist_dict_get_item(args, "WIRListingKey");
  rpc_status ret;
  if (!rpc_dict_get_required_string(args, "WIRApplicationIdentifierKey",
        &app_id) &&
      !rpc_parse_pages(item, &pages) &&
      !self->on_applicationSentListing(self, app_id, pages)) {
    ret = RPC_SUCCESS;
  } else {
    ret = RPC_ERROR;
  }
  free(app_id);
  rpc_free_pages(pages);
  return ret;
}
