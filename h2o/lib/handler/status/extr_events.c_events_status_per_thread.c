
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct st_events_status_ctx_t {int mutex; int h2_write_closed; int h2_read_closed; int * h2_protocol_level_errors; int ssl_errors; int * emitted_status_errors; } ;
struct TYPE_7__ {scalar_t__ write_closed; scalar_t__ read_closed; scalar_t__* protocol_level_errors; } ;
struct TYPE_8__ {TYPE_2__ events; } ;
struct TYPE_6__ {scalar_t__ errors; } ;
struct TYPE_9__ {TYPE_3__ http2; TYPE_1__ ssl; scalar_t__* emitted_error_status; } ;
typedef TYPE_4__ h2o_context_t ;


 size_t H2O_HTTP2_ERROR_MAX ;
 size_t H2O_STATUS_ERROR_MAX ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void events_status_per_thread(void *priv, h2o_context_t *ctx)
{
    size_t i;
    struct st_events_status_ctx_t *esc = priv;

    pthread_mutex_lock(&esc->mutex);

    for (i = 0; i < H2O_STATUS_ERROR_MAX; i++) {
        esc->emitted_status_errors[i] += ctx->emitted_error_status[i];
    }
    esc->ssl_errors += ctx->ssl.errors;
    for (i = 0; i < H2O_HTTP2_ERROR_MAX; i++) {
        esc->h2_protocol_level_errors[i] += ctx->http2.events.protocol_level_errors[i];
    }
    esc->h2_read_closed += ctx->http2.events.read_closed;
    esc->h2_write_closed += ctx->http2.events.write_closed;

    pthread_mutex_unlock(&esc->mutex);
}
