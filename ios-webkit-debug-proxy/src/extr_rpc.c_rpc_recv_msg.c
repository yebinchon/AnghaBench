
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
struct TYPE_12__ {int (* on_error ) (TYPE_1__*,char*,char const*,char*) ;} ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int free (char*) ;
 int rpc_args_to_xml (TYPE_1__*,int const,char**,int) ;
 int rpc_recv_applicationConnected (TYPE_1__*,int const) ;
 int rpc_recv_applicationDisconnected (TYPE_1__*,int const) ;
 int rpc_recv_applicationSentData (TYPE_1__*,int const) ;
 int rpc_recv_applicationSentListing (TYPE_1__*,int const) ;
 int rpc_recv_applicationUpdated (TYPE_1__*,int const) ;
 int rpc_recv_reportConnectedApplicationList (TYPE_1__*,int const) ;
 int rpc_recv_reportSetup (TYPE_1__*,int const) ;
 int strcmp (char const*,char*) ;
 int stub1 (TYPE_1__*,char*,char const*,char*) ;

rpc_status rpc_recv_msg(rpc_t self, const char *selector, const plist_t args) {
  if (!selector) {
    return RPC_ERROR;
  }

  if (!strcmp(selector, "_rpc_reportSetup:")) {
    if (!rpc_recv_reportSetup(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_reportConnectedApplicationList:")) {
    if (!rpc_recv_reportConnectedApplicationList(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_applicationConnected:")) {
    if (!rpc_recv_applicationConnected(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_applicationDisconnected:")) {
    if (!rpc_recv_applicationDisconnected(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_applicationSentListing:")) {
    if (!rpc_recv_applicationSentListing(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_applicationSentData:")) {
    if (!rpc_recv_applicationSentData(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_applicationUpdated:")) {
    if (!rpc_recv_applicationUpdated(self, args)) {
      return RPC_SUCCESS;
    }
  } else if (!strcmp(selector, "_rpc_reportConnectedDriverList:")) {
    return RPC_SUCCESS;
  }


  char *args_xml = ((void*)0);
  rpc_args_to_xml(self, args, &args_xml, 1);
  rpc_status ret = self->on_error(self, "Invalid message %s %s",
      selector, args_xml);
  free(args_xml);
  return ret;
}
