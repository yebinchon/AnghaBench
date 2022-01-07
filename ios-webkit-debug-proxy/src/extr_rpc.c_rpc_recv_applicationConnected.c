
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int * rpc_app_t ;
typedef int plist_t ;
struct TYPE_4__ {int (* on_applicationConnected ) (TYPE_1__*,int *) ;} ;


 int rpc_free_app (int *) ;
 int rpc_parse_app (int const,int **) ;
 int stub1 (TYPE_1__*,int *) ;

rpc_status rpc_recv_applicationConnected(rpc_t self, const plist_t args) {
  rpc_app_t app = ((void*)0);
  rpc_status ret = rpc_parse_app(args, &app);
  if (!ret) {
    ret = self->on_applicationConnected(self, app);
    rpc_free_app(app);
  }
  return ret;
}
