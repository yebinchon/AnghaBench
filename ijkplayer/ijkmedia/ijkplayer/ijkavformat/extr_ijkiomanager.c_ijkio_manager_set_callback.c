
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ijkio_app_ctx; } ;
struct TYPE_4__ {void* func_ijkio_on_app_event; } ;
typedef TYPE_2__ IjkIOManagerContext ;



int ijkio_manager_set_callback(IjkIOManagerContext *h, void *callback) {
    if (!h)
        return -1;

    h->ijkio_app_ctx->func_ijkio_on_app_event = callback;

    return 0;
}
