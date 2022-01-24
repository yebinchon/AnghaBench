#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_pathconf_t ;
struct TYPE_16__ {size_t size; int /*<<< orphan*/ * entries; } ;
struct TYPE_21__ {int /*<<< orphan*/  fallback_path; TYPE_2__ paths; } ;
typedef  TYPE_7__ h2o_hostconf_t ;
struct TYPE_15__ {int /*<<< orphan*/  global_socketpool; } ;
struct TYPE_22__ {TYPE_7__** hosts; TYPE_1__ proxy; } ;
typedef  TYPE_8__ h2o_globalconf_t ;
struct TYPE_20__ {int /*<<< orphan*/ * value; } ;
struct TYPE_19__ {int /*<<< orphan*/  hostinfo_getaddr; } ;
struct TYPE_18__ {size_t size; TYPE_10__* entries; } ;
struct TYPE_17__ {TYPE_10__* entries; } ;
struct TYPE_23__ {TYPE_6__ _timestamp_cache; int /*<<< orphan*/  queue; TYPE_5__ receivers; TYPE_4__ storage; int /*<<< orphan*/ * filecache; TYPE_10__* _module_configs; TYPE_3__ _pathconfs_inited; int /*<<< orphan*/  loop; TYPE_8__* globalconf; } ;
typedef  TYPE_9__ h2o_context_t ;
struct TYPE_14__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* dispose ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_10__ h2o_context_storage_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(h2o_context_t *ctx)
{
    h2o_globalconf_t *config = ctx->globalconf;
    size_t i, j;

    FUNC6(&ctx->globalconf->proxy.global_socketpool, ctx->loop);

    for (i = 0; config->hosts[i] != NULL; ++i) {
        h2o_hostconf_t *hostconf = config->hosts[i];
        for (j = 0; j != hostconf->paths.size; ++j) {
            h2o_pathconf_t *pathconf = hostconf->paths.entries + j;
            FUNC1(ctx, pathconf);
        }
        FUNC1(ctx, &hostconf->fallback_path);
    }
    FUNC0(ctx->_pathconfs_inited.entries);
    FUNC0(ctx->_module_configs);
    /* what should we do here? assert(!h2o_linklist_is_empty(&ctx->http2._conns); */

    FUNC2(ctx->filecache);
    ctx->filecache = NULL;

    /* clear storage */
    for (i = 0; i != ctx->storage.size; ++i) {
        h2o_context_storage_item_t *item = ctx->storage.entries + i;
        if (item->dispose != NULL) {
            item->dispose(item->data);
        }
    }
    FUNC0(ctx->storage.entries);

    /* TODO assert that the all the getaddrinfo threads are idle */
    FUNC5(ctx->queue, &ctx->receivers.hostinfo_getaddr);
    FUNC4(ctx->queue);

    if (ctx->_timestamp_cache.value != NULL)
        FUNC3(ctx->_timestamp_cache.value);
}