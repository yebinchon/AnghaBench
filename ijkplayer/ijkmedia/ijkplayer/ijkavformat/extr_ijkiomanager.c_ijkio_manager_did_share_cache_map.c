
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ijkio_app_ctx; } ;
struct TYPE_4__ {int mutex; scalar_t__ shared; } ;
typedef TYPE_2__ IjkIOManagerContext ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void ijkio_manager_did_share_cache_map(IjkIOManagerContext *h) {
    av_log(((void*)0), AV_LOG_INFO, "did share cache\n");
    if (!h || !h->ijkio_app_ctx) {
        return;
    }
    pthread_mutex_lock(&h->ijkio_app_ctx->mutex);
    h->ijkio_app_ctx->shared = 0;
    pthread_mutex_unlock(&h->ijkio_app_ctx->mutex);
}
