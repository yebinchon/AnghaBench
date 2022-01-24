#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* ijkio_app_ctx; int /*<<< orphan*/  cache_map_path; } ;
struct TYPE_4__ {int shared; scalar_t__ fd; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cache_info_map; } ;
typedef  TYPE_2__ IjkIOManagerContext ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ijkio_manager_save_tree_to_file ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(IjkIOManagerContext *h) {
    FUNC0(NULL, AV_LOG_INFO, "will share cache\n");
    if (!h || !h->ijkio_app_ctx || !FUNC7(h->cache_map_path)) {
        return;
    }

    FUNC5(&h->ijkio_app_ctx->mutex);
    FILE *map_tree_info_fp = FUNC2(h->cache_map_path, "w");
    if (!map_tree_info_fp) {
        FUNC6(&h->ijkio_app_ctx->mutex);
        return;
    }
    h->ijkio_app_ctx->shared = 1;
    FUNC4(h->ijkio_app_ctx->cache_info_map, map_tree_info_fp, ijkio_manager_save_tree_to_file);
    FUNC1(map_tree_info_fp);
    if (h->ijkio_app_ctx->fd >= 0) {
        FUNC3(h->ijkio_app_ctx->fd);
    }
    FUNC6(&h->ijkio_app_ctx->mutex);
}