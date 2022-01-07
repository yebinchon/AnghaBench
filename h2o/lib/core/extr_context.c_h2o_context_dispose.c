
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int h2o_pathconf_t ;
struct TYPE_16__ {size_t size; int * entries; } ;
struct TYPE_21__ {int fallback_path; TYPE_2__ paths; } ;
typedef TYPE_7__ h2o_hostconf_t ;
struct TYPE_15__ {int global_socketpool; } ;
struct TYPE_22__ {TYPE_7__** hosts; TYPE_1__ proxy; } ;
typedef TYPE_8__ h2o_globalconf_t ;
struct TYPE_20__ {int * value; } ;
struct TYPE_19__ {int hostinfo_getaddr; } ;
struct TYPE_18__ {size_t size; TYPE_10__* entries; } ;
struct TYPE_17__ {TYPE_10__* entries; } ;
struct TYPE_23__ {TYPE_6__ _timestamp_cache; int queue; TYPE_5__ receivers; TYPE_4__ storage; int * filecache; TYPE_10__* _module_configs; TYPE_3__ _pathconfs_inited; int loop; TYPE_8__* globalconf; } ;
typedef TYPE_9__ h2o_context_t ;
struct TYPE_14__ {int data; int (* dispose ) (int ) ;} ;
typedef TYPE_10__ h2o_context_storage_item_t ;


 int free (TYPE_10__*) ;
 int h2o_context_dispose_pathconf_context (TYPE_9__*,int *) ;
 int h2o_filecache_destroy (int *) ;
 int h2o_mem_release_shared (int *) ;
 int h2o_multithread_destroy_queue (int ) ;
 int h2o_multithread_unregister_receiver (int ,int *) ;
 int h2o_socketpool_unregister_loop (int *,int ) ;
 int stub1 (int ) ;

void h2o_context_dispose(h2o_context_t *ctx)
{
    h2o_globalconf_t *config = ctx->globalconf;
    size_t i, j;

    h2o_socketpool_unregister_loop(&ctx->globalconf->proxy.global_socketpool, ctx->loop);

    for (i = 0; config->hosts[i] != ((void*)0); ++i) {
        h2o_hostconf_t *hostconf = config->hosts[i];
        for (j = 0; j != hostconf->paths.size; ++j) {
            h2o_pathconf_t *pathconf = hostconf->paths.entries + j;
            h2o_context_dispose_pathconf_context(ctx, pathconf);
        }
        h2o_context_dispose_pathconf_context(ctx, &hostconf->fallback_path);
    }
    free(ctx->_pathconfs_inited.entries);
    free(ctx->_module_configs);


    h2o_filecache_destroy(ctx->filecache);
    ctx->filecache = ((void*)0);


    for (i = 0; i != ctx->storage.size; ++i) {
        h2o_context_storage_item_t *item = ctx->storage.entries + i;
        if (item->dispose != ((void*)0)) {
            item->dispose(item->data);
        }
    }
    free(ctx->storage.entries);


    h2o_multithread_unregister_receiver(ctx->queue, &ctx->receivers.hostinfo_getaddr);
    h2o_multithread_destroy_queue(ctx->queue);

    if (ctx->_timestamp_cache.value != ((void*)0))
        h2o_mem_release_shared(ctx->_timestamp_cache.value);
}
