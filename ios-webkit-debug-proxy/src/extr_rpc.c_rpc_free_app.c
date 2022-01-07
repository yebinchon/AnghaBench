
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_app_struct {int dummy; } ;
typedef TYPE_1__* rpc_app_t ;
struct TYPE_5__ {struct TYPE_5__* app_name; struct TYPE_5__* app_id; } ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void rpc_free_app(rpc_app_t app) {
  if (app) {
    free(app->app_id);
    free(app->app_name);
    memset(app, 0, sizeof(struct rpc_app_struct));
    free(app);
  }
}
