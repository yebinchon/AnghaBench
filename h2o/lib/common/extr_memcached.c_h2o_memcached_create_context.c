
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_7__ {int base; } ;
struct TYPE_6__ {int text_protocol; TYPE_2__ prefix; int port; int host; scalar_t__ num_threads_connected; int pending; int cond; int mutex; } ;
typedef TYPE_1__ h2o_memcached_context_t ;


 int SIZE_MAX ;
 int h2o_linklist_init_anchor (int *) ;
 TYPE_1__* h2o_mem_alloc (int) ;
 int h2o_multithread_create_thread (int *,int *,int ,TYPE_1__*) ;
 TYPE_2__ h2o_strdup (int *,char const*,int ) ;
 int pthread_attr_destroy (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int thread_main ;

h2o_memcached_context_t *h2o_memcached_create_context(const char *host, uint16_t port, int text_protocol, size_t num_threads,
                                                      const char *prefix)
{
    h2o_memcached_context_t *ctx = h2o_mem_alloc(sizeof(*ctx));

    pthread_mutex_init(&ctx->mutex, ((void*)0));
    pthread_cond_init(&ctx->cond, ((void*)0));
    h2o_linklist_init_anchor(&ctx->pending);
    ctx->num_threads_connected = 0;
    ctx->host = h2o_strdup(((void*)0), host, SIZE_MAX).base;
    ctx->port = port;
    ctx->text_protocol = text_protocol;
    ctx->prefix = h2o_strdup(((void*)0), prefix, SIZE_MAX);

    {
        pthread_t tid;
        pthread_attr_t attr;
        size_t i;
        pthread_attr_init(&attr);
        pthread_attr_setdetachstate(&attr, 1);
        for (i = 0; i != num_threads; ++i)
            h2o_multithread_create_thread(&tid, &attr, thread_main, ctx);
        pthread_attr_destroy(&attr);
    }

    return ctx;
}
