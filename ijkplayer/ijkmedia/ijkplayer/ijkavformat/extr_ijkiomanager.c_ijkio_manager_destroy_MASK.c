#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ fd; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cache_file_path; scalar_t__ threadpool_ctx; int /*<<< orphan*/ * cache_info_map; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ijk_ctx_map; TYPE_3__* ijkio_app_ctx; int /*<<< orphan*/  cache_map_path; scalar_t__ auto_save_map; } ;
typedef  TYPE_1__ IjkIOManagerContext ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IJK_IMMEDIATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**) ; 
 int /*<<< orphan*/  ijkio_manager_save_tree_to_file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree_destroy ; 

void FUNC10(IjkIOManagerContext *h)
{
    FILE *map_tree_info_fp = NULL;

    if (h->ijkio_app_ctx) {
        if (h->auto_save_map) {
            map_tree_info_fp = FUNC2(h->cache_map_path, "w");
            if (map_tree_info_fp) {
                FUNC5(h->ijkio_app_ctx->cache_info_map, map_tree_info_fp, ijkio_manager_save_tree_to_file);
                FUNC1(map_tree_info_fp);
            }
        }

        FUNC5(h->ijkio_app_ctx->cache_info_map, NULL, tree_destroy);
        FUNC4(h->ijkio_app_ctx->cache_info_map);
        h->ijkio_app_ctx->cache_info_map = NULL;

        if (h->ijkio_app_ctx->threadpool_ctx) {
            FUNC6(h->ijkio_app_ctx->threadpool_ctx, IJK_IMMEDIATE_SHUTDOWN);
        }

        if (0 != FUNC9(h->ijkio_app_ctx->cache_file_path)) {
            if (h->ijkio_app_ctx->fd >= 0) {
                FUNC0(h->ijkio_app_ctx->fd);
            }
        }
        FUNC8(&h->ijkio_app_ctx->mutex);

        FUNC7(&h->ijkio_app_ctx);
    }

    FUNC4(h->ijk_ctx_map);
    h->ijk_ctx_map = NULL;

    FUNC3(h);
}