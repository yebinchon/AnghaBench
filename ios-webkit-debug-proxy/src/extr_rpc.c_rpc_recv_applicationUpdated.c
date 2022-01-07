
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
struct TYPE_5__ {int (* on_applicationUpdated ) (TYPE_1__*,char*,char*) ;} ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int free (char*) ;
 int rpc_dict_get_required_string (int const,char*,char**) ;
 int stub1 (TYPE_1__*,char*,char*) ;
 int stub2 (TYPE_1__*,char*,char*) ;

rpc_status rpc_recv_applicationUpdated(rpc_t self, const plist_t args) {
  char *app_id = ((void*)0);
  char *dest_id = ((void*)0);
  rpc_status ret;
  if (!rpc_dict_get_required_string(args, "WIRHostApplicationIdentifierKey", &app_id)) {
    if (!rpc_dict_get_required_string(args, "WIRApplicationIdentifierKey", &dest_id) &&
      !self->on_applicationUpdated(self, app_id, dest_id)) {
      ret = RPC_SUCCESS;
    } else {
      ret = RPC_ERROR;
    }
  } else if (!rpc_dict_get_required_string(args, "WIRApplicationNameKey", &app_id) &&
             !rpc_dict_get_required_string(args, "WIRApplicationIdentifierKey", &dest_id) &&
             !self->on_applicationUpdated(self, app_id, dest_id)) {
    ret = RPC_SUCCESS;
  } else {
    ret = RPC_ERROR;
  }
  free(app_id);
  free(dest_id);
  return ret;
}
