
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* rpc_t ;
typedef int * rpc_app_t ;
typedef TYPE_2__* iwdp_iwi_t ;
struct TYPE_5__ {int * app; } ;
struct TYPE_4__ {int state; } ;


 int rpc_copy_app (int * const,int **) ;

void rpc_set_app(rpc_t rpc, const rpc_app_t app) {
    iwdp_iwi_t iwi = (iwdp_iwi_t)rpc->state;
    rpc_app_t to_app = ((void*)0);
    rpc_copy_app(app, &to_app);
    iwi->app = to_app;
}
