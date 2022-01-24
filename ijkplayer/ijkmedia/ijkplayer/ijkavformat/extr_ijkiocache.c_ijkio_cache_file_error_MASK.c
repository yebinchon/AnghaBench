#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {int file_handle_retry_count; int file_error_count; int fd; int cache_file_close; int /*<<< orphan*/ * tree_info; scalar_t__ cur_file_no; int /*<<< orphan*/  cache_info_map; TYPE_1__* ijkio_app_ctx; int /*<<< orphan*/  cache_file_path; int /*<<< orphan*/  read_logical_pos; int /*<<< orphan*/  file_logical_pos; scalar_t__ io_eof_reached; scalar_t__ file_inner_pos; scalar_t__ cache_physical_pos; scalar_t__* last_physical_pos; } ;
struct TYPE_8__ {TYPE_2__* ijkio_app_ctx; TYPE_4__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {int fd; int /*<<< orphan*/  shared; } ;
typedef  TYPE_3__ IjkURLContext ;
typedef  TYPE_4__ IjkIOCacheContext ;
typedef  int /*<<< orphan*/  IjkCacheTreeInfo ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FILE_RW_ERROR ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree_destroy ; 

__attribute__((used)) static int FUNC10(IjkURLContext *h) {
    IjkIOCacheContext *c = h->priv_data;

    FUNC0(NULL, AV_LOG_WARNING, "ijkio_cache_file_error\n");
    if (c && c->file_handle_retry_count > 3) {
        FUNC7(&h->ijkio_app_ctx->mutex);
        c->file_error_count++;
        if (!c->ijkio_app_ctx->shared) {
            FUNC5(c->cache_info_map, NULL, tree_destroy);
            FUNC3(c->cache_info_map);
            c->tree_info = NULL;
            *c->last_physical_pos    = 0;
            c->cache_physical_pos    = 0;
            c->file_inner_pos        = 0;
            c->io_eof_reached        = 0;
            c->file_logical_pos      = c->read_logical_pos;
            FUNC2(c->fd);
            c->fd = -1;
            c->ijkio_app_ctx->fd = -1;
            if (c->file_error_count > 3) {
                c->cache_file_close = 1;
                FUNC9(c->cache_file_path);
                FUNC0(NULL, AV_LOG_WARNING, "ijkio_cache_file_error will remove file\n");
                goto fail;
            }
            c->fd = FUNC6(c->cache_file_path, O_RDWR | O_BINARY | O_CREAT | O_TRUNC, 0600);
            c->ijkio_app_ctx->fd = c->fd;
            if (c->fd >= 0) {
                c->file_handle_retry_count = 0;
                c->tree_info = FUNC1(1, sizeof(IjkCacheTreeInfo));
                if (!c->tree_info) {
                    c->cache_file_close = 1;
                    goto fail;
                }
                FUNC4(c->cache_info_map, (int64_t)c->cur_file_no, c->tree_info);
            } else {
                FUNC0(NULL, AV_LOG_WARNING, "ijkio_cache_file_error will cache_file_close\n");
                c->cache_file_close = 1;
                goto fail;
            }
        }
        FUNC8(&h->ijkio_app_ctx->mutex);
    }

    return 0;

fail:
    FUNC8(&h->ijkio_app_ctx->mutex);
    return FILE_RW_ERROR;
}