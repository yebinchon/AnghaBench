
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pending; } ;
typedef TYPE_1__ h2o_memcached_req_t ;
struct TYPE_7__ {scalar_t__ num_threads_connected; int mutex; int cond; int pending; } ;
typedef TYPE_2__ h2o_memcached_context_t ;


 int discard_req (TYPE_1__*) ;
 int h2o_linklist_insert (int *,int *) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void dispatch(h2o_memcached_context_t *ctx, h2o_memcached_req_t *req)
{
    pthread_mutex_lock(&ctx->mutex);

    if (ctx->num_threads_connected != 0) {
        h2o_linklist_insert(&ctx->pending, &req->pending);
        pthread_cond_signal(&ctx->cond);
    } else {
        discard_req(req);
    }

    pthread_mutex_unlock(&ctx->mutex);
}
