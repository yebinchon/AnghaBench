
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_ssl_status_ctx_t {int mutex; int handshake_accum_time_resume; int handshake_accum_time_full; int handshake_resume; int handshake_full; int alpn_h2; int alpn_h1; } ;
struct TYPE_4__ {scalar_t__ handshake_accum_time_resume; scalar_t__ handshake_accum_time_full; scalar_t__ handshake_resume; scalar_t__ handshake_full; scalar_t__ alpn_h2; scalar_t__ alpn_h1; } ;
struct TYPE_5__ {TYPE_1__ ssl; } ;
typedef TYPE_2__ h2o_context_t ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void ssl_status_per_thread(void *_ssc, h2o_context_t *ctx)
{
    struct st_ssl_status_ctx_t *ssc = _ssc;

    pthread_mutex_lock(&ssc->mutex);

    ssc->alpn_h1 += ctx->ssl.alpn_h1;
    ssc->alpn_h2 += ctx->ssl.alpn_h2;
    ssc->handshake_full += ctx->ssl.handshake_full;
    ssc->handshake_resume += ctx->ssl.handshake_resume;
    ssc->handshake_accum_time_full += ctx->ssl.handshake_accum_time_full;
    ssc->handshake_accum_time_resume += ctx->ssl.handshake_accum_time_resume;

    pthread_mutex_unlock(&ssc->mutex);
}
