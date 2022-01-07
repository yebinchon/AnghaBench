
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * cb; } ;
struct TYPE_9__ {TYPE_1__ get; } ;
struct TYPE_10__ {int pending; TYPE_2__ data; } ;
typedef TYPE_3__ h2o_memcached_req_t ;
struct TYPE_11__ {int mutex; } ;
typedef TYPE_4__ h2o_memcached_context_t ;


 int free_req (TYPE_3__*) ;
 scalar_t__ h2o_linklist_is_linked (int *) ;
 int h2o_linklist_unlink (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void h2o_memcached_cancel_get(h2o_memcached_context_t *ctx, h2o_memcached_req_t *req)
{
    int do_free = 0;

    pthread_mutex_lock(&ctx->mutex);
    req->data.get.cb = ((void*)0);
    if (h2o_linklist_is_linked(&req->pending)) {
        h2o_linklist_unlink(&req->pending);
        do_free = 1;
    }
    pthread_mutex_unlock(&ctx->mutex);

    if (do_free)
        free_req(req);
}
