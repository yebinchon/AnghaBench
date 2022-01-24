#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_23__ {struct TYPE_23__* priv_data; TYPE_1__* prot; TYPE_2__* ijkio_app_ctx; } ;
struct TYPE_22__ {int /*<<< orphan*/  value; } ;
struct TYPE_21__ {int async_open; int cache_file_close; int cur_file_no; int only_read_file; scalar_t__* last_physical_pos; int fd; scalar_t__ cache_physical_pos; scalar_t__ logical_size; int inner_flags; int task_is_running; TYPE_6__* inner; scalar_t__ inner_options; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_file_background; int /*<<< orphan*/  cond_wakeup_exit; int /*<<< orphan*/  threadpool_ctx; void* cache_file_forwards_capacity; int /*<<< orphan*/  inner_url; TYPE_11__* tree_info; TYPE_2__* ijkio_app_ctx; int /*<<< orphan*/  cache_info_map; int /*<<< orphan*/ * cache_file_path; int /*<<< orphan*/ * cache_count_bytes; void* cache_max_capacity; int /*<<< orphan*/  ijkio_interrupt_callback; } ;
struct TYPE_20__ {TYPE_2__* ijkio_app_ctx; TYPE_4__* priv_data; } ;
struct TYPE_19__ {scalar_t__ last_physical_pos; int fd; int /*<<< orphan*/  cache_count_bytes; int /*<<< orphan*/  cache_info_map; int /*<<< orphan*/  threadpool_ctx; int /*<<< orphan*/ * cache_file_path; int /*<<< orphan*/  ijkio_interrupt_callback; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* url_close ) (TYPE_6__*) ;} ;
struct TYPE_17__ {scalar_t__ physical_init_pos; int physical_size; scalar_t__ file_size; } ;
typedef  TYPE_3__ IjkURLContext ;
typedef  TYPE_4__ IjkIOCacheContext ;
typedef  int /*<<< orphan*/  IjkCacheTreeInfo ;
typedef  TYPE_5__ IjkAVDictionaryEntry ;
typedef  int /*<<< orphan*/  IjkAVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 void* DEFAULT_CACHE_MAX_CAPACITY ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IJK_AV_DICT_MATCH_CASE ; 
 int O_BINARY ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_11__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,TYPE_11__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_6__**,char const*) ; 
 int FUNC18 (TYPE_3__*,char const*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ijkio_cache_task ; 
 scalar_t__ FUNC19 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC20 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_6__*) ; 
 int /*<<< orphan*/  tree_destroy ; 

__attribute__((used)) static int FUNC31(IjkURLContext *h, const char *url, int flags, IjkAVDictionary **options) {
    IjkIOCacheContext *c= h->priv_data;
    int ret = 0;
    int64_t cur_exist_file_size = 0;
    if (!c)
        return FUNC0(ENOSYS);

    c->ijkio_app_ctx = h->ijkio_app_ctx;
    if (c->ijkio_app_ctx == NULL) {
        return -1;
    }

    c->async_open = 0;
    c->ijkio_interrupt_callback = h->ijkio_app_ctx->ijkio_interrupt_callback;
    c->cache_file_forwards_capacity = 0;

    FUNC10(url, "cache:", &url);
    c->cache_max_capacity = DEFAULT_CACHE_MAX_CAPACITY;

    IjkAVDictionaryEntry *t = NULL;
    t = FUNC8(*options, "cache_max_capacity", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        c->cache_max_capacity = FUNC29(t->value, NULL, 10);
    }

    t = FUNC8(*options, "cache_file_forwards_capacity", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        c->cache_file_forwards_capacity = FUNC29(t->value, NULL, 10);
    }

    t = FUNC8(*options, "cache_file_close", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        c->cache_file_close = (int)FUNC28(t->value, NULL, 10);
        c->cache_file_close = c->cache_file_close != 0 ? 1 : 0;
    }

    t = FUNC8(*options, "cur_file_no", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        c->cur_file_no = (int)FUNC28(t->value, NULL, 10);
    }

    t = FUNC8(*options, "only_read_file", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        c->only_read_file = (int)FUNC28(t->value, NULL, 10);
        if (c->only_read_file) {
            c->cache_file_forwards_capacity = 0;
        }
    }

    c->cache_file_path = c->ijkio_app_ctx->cache_file_path;

    if (c->cache_file_path == NULL || 0 == FUNC27(c->cache_file_path)) {
        c->cache_file_close = 1;
    }

    c->threadpool_ctx       = c->ijkio_app_ctx->threadpool_ctx;
    c->cache_info_map       = c->ijkio_app_ctx->cache_info_map;
    c->last_physical_pos    = &c->ijkio_app_ctx->last_physical_pos;
    c->cache_count_bytes    = &c->ijkio_app_ctx->cache_count_bytes;
    if (!c->last_physical_pos || !c->threadpool_ctx || !c->cache_info_map) {
        return -1;
    }

    if (!c->cache_file_close) {
        do {
            if (c->ijkio_app_ctx->fd >= 0) {
                c->fd = c->ijkio_app_ctx->fd;
            } else {
                if (FUNC14(c->cache_info_map) > 0) {
                    FUNC2(NULL, AV_LOG_INFO, "ijkio cache will use the data that already exists\n");
                    c->fd = FUNC20(c->cache_file_path, O_RDWR | O_BINARY, 0600);
                    c->async_open = 1;
                    cur_exist_file_size = FUNC19(c->fd, 0, SEEK_END);
                    if (cur_exist_file_size < *c->last_physical_pos) {
                        FUNC2(NULL, AV_LOG_WARNING, "ijkio cache exist is error, will delete last_physical_pos = %lld, cur_exist_file_size = %lld\n", *c->last_physical_pos, cur_exist_file_size);
                        FUNC15(c->cache_info_map, NULL, tree_destroy);
                        FUNC11(c->cache_info_map);
                        *c->last_physical_pos    = 0;
                        c->cache_physical_pos    = 0;
                    }
                } else {
                    c->fd = FUNC20(c->cache_file_path, O_RDWR | O_BINARY | O_CREAT | O_TRUNC, 0600);
                }
                c->ijkio_app_ctx->fd = c->fd;
            }
            if (c->fd < 0) {
                c->cache_file_close = 1;
                break;
            }

            int64_t seek_ret = FUNC19(c->fd, *c->last_physical_pos, SEEK_SET);
            if (seek_ret < 0) {
                c->cache_file_close = 1;
                FUNC5(c->fd);
                c->fd = -1;
                c->ijkio_app_ctx->fd = -1;
                break;
            } else {
                c->cache_physical_pos = *c->last_physical_pos;
            }

            c->tree_info = FUNC12(c->cache_info_map, (int64_t)c->cur_file_no);
            if (c->tree_info == NULL) {
                c->tree_info = FUNC4(1, sizeof(IjkCacheTreeInfo));
                c->tree_info->physical_init_pos = *c->last_physical_pos;
                FUNC13(c->cache_info_map, (int64_t)c->cur_file_no, c->tree_info);
            } else {
                if (c->tree_info->physical_size > 200 * 1024 && c->tree_info->file_size > 0) {
                    c->logical_size = c->tree_info->file_size;
                    c->async_open = 1;
                } else {
                    c->async_open = 0;
                }
            }
        } while(0);
    }

    ret = FUNC17(&(c->inner), url);
    if (c->inner && !ret) {
        c->inner->ijkio_app_ctx = c->ijkio_app_ctx;
        if (c->logical_size <= 0 || c->async_open == 0) {
            c->async_open = 0;
            ret = FUNC18(h, url, flags, options);
            if (ret != 0)
                goto url_fail;
        } else {
            c->tree_info->file_size = c->logical_size;
            FUNC6(&c->inner_options, *options, 0);
            FUNC26(c->inner_url, url);
            c->inner_flags = flags;
            FUNC3(h);
        }
    }

    ret = FUNC25(&c->file_mutex, NULL);
    if (ret != 0) {
        FUNC2(NULL, AV_LOG_ERROR, "pthread_mutex_init failed : %s\n", FUNC1(ret));
        goto file_mutex_fail;
    }

    ret = FUNC22(&c->cond_wakeup_main, NULL);
    if (ret != 0) {
        FUNC2(NULL, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", FUNC1(ret));
        goto cond_wakeup_main_fail;
    }

    ret = FUNC22(&c->cond_wakeup_file_background, NULL);
    if (ret != 0) {
        FUNC2(NULL, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", FUNC1(ret));
        goto cond_wakeup_file_background_fail;
    }

    ret = FUNC22(&c->cond_wakeup_exit, NULL);
    if (ret != 0) {
        FUNC2(NULL, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", FUNC1(ret));
        goto cond_wakeup_exit_fail;
    }

    if (!c->cache_file_close && c->cache_file_forwards_capacity) {
        c->task_is_running = 1;
        ret = FUNC16(c->threadpool_ctx, ijkio_cache_task, h, NULL, 0);
        if (ret) {
            c->task_is_running = 0;
            FUNC23(&c->cond_wakeup_exit);
            goto thread_fail;
        }
    }

    return 0;

thread_fail:
    FUNC21(&c->cond_wakeup_exit);
cond_wakeup_exit_fail:
    FUNC21(&c->cond_wakeup_file_background);
cond_wakeup_file_background_fail:
    FUNC21(&c->cond_wakeup_main);
cond_wakeup_main_fail:
    FUNC24(&c->file_mutex);
file_mutex_fail:
    if (c->async_open) {
        if (c->inner_options) {
            FUNC7(&c->inner_options);
        }
    } else {
        if (c->inner) {
            if (c->inner->prot && c->inner->prot->url_close) {
                c->inner->prot->url_close(c->inner);
            }
        }
    }
url_fail:
    if (c->inner) {
        FUNC9(&c->inner->priv_data);
        FUNC9(&c->inner);
    }
    return ret;
}