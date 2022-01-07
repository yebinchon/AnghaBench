
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
struct TYPE_4__ {int (* on_applicationSentData ) (TYPE_1__*,char*,char*,char*,size_t) ;} ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int free (char*) ;
 int rpc_dict_get_required_data (int const,char*,char**,size_t*) ;
 int rpc_dict_get_required_string (int const,char*,char**) ;
 int stub1 (TYPE_1__*,char*,char*,char*,size_t) ;

rpc_status rpc_recv_applicationSentData(rpc_t self, const plist_t args) {
  char *app_id = ((void*)0);
  char *dest_id = ((void*)0);
  char *data = ((void*)0);
  size_t length = 0;
  rpc_status ret;
  if (!rpc_dict_get_required_string(args, "WIRApplicationIdentifierKey",
        &app_id) &&
      !rpc_dict_get_required_string(args, "WIRDestinationKey",
        &dest_id) &&
      !rpc_dict_get_required_data(args, "WIRMessageDataKey",
        &data, &length) &&
      !self->on_applicationSentData(self,
        app_id, dest_id, data, length)) {
    ret = RPC_SUCCESS;
  } else {
    ret = RPC_ERROR;
  }
  free(app_id);
  free(dest_id);
  free(data);
  return ret;
}
