
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ijkio_app_ctx; } ;
struct TYPE_4__ {int active_reconnect; } ;
typedef TYPE_2__ IjkIOManagerContext ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*) ;

void ijkio_manager_immediate_reconnect(IjkIOManagerContext *h) {
    av_log(((void*)0), AV_LOG_INFO, "ijkio manager immediate reconnect\n");
    if (!h || !h->ijkio_app_ctx) {
        return;
    }
    h->ijkio_app_ctx->active_reconnect = 1;
}
