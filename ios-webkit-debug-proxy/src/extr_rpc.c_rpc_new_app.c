
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_app_struct {int dummy; } ;
typedef scalar_t__ rpc_app_t ;


 int malloc (int) ;
 int memset (scalar_t__,int ,int) ;

rpc_app_t rpc_new_app() {
  rpc_app_t app = (rpc_app_t)malloc(sizeof(struct rpc_app_struct));
  if (app) {
    memset(app, 0, sizeof(struct rpc_app_struct));
  }
  return app;
}
