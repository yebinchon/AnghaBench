
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_struct {int dummy; } ;
typedef TYPE_1__* rpc_t ;
struct TYPE_4__ {int on_error; int recv_plist; int send_forwardDidClose; int send_forwardSocketData; int send_forwardSocketSetup; int send_forwardIndicateWebView; int send_forwardGetListing; int send_getConnectedApplications; int send_reportIdentifier; } ;


 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int rpc_on_error ;
 int rpc_recv_plist ;
 int rpc_send_forwardDidClose ;
 int rpc_send_forwardGetListing ;
 int rpc_send_forwardIndicateWebView ;
 int rpc_send_forwardSocketData ;
 int rpc_send_forwardSocketSetup ;
 int rpc_send_getConnectedApplications ;
 int rpc_send_reportIdentifier ;

rpc_t rpc_new() {
  rpc_t self = (rpc_t)malloc(sizeof(struct rpc_struct));
  if (!self) {
    return ((void*)0);
  }
  memset(self, 0, sizeof(struct rpc_struct));
  self->send_reportIdentifier = rpc_send_reportIdentifier;
  self->send_getConnectedApplications = rpc_send_getConnectedApplications;
  self->send_forwardGetListing = rpc_send_forwardGetListing;
  self->send_forwardIndicateWebView = rpc_send_forwardIndicateWebView;
  self->send_forwardSocketSetup = rpc_send_forwardSocketSetup;
  self->send_forwardSocketData = rpc_send_forwardSocketData;
  self->send_forwardDidClose = rpc_send_forwardDidClose;
  self->recv_plist = rpc_recv_plist;
  self->on_error = rpc_on_error;
  return self;
}
