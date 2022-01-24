#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_18__ {int /*<<< orphan*/  ijkio_interrupt_callback; scalar_t__ cache_info_map; int /*<<< orphan*/  cache_file_path; } ;
struct TYPE_17__ {int /*<<< orphan*/  value; } ;
struct TYPE_16__ {int auto_save_map; scalar_t__ cur_ffmpeg_ctx; scalar_t__ ijk_ctx_map; TYPE_8__* ijkio_app_ctx; int /*<<< orphan*/  ijkio_interrupt_callback; int /*<<< orphan*/  cache_map_path; } ;
struct TYPE_15__ {struct TYPE_15__* priv_data; TYPE_1__* prot; int /*<<< orphan*/  state; TYPE_8__* ijkio_app_ctx; } ;
struct TYPE_14__ {int (* url_open2 ) (TYPE_2__*,char const*,int,int /*<<< orphan*/ **) ;int (* url_close ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOManagerContext ;
typedef  TYPE_4__ IjkAVDictionaryEntry ;
typedef  int /*<<< orphan*/  IjkAVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  IJKURL_STARTED ; 
 int /*<<< orphan*/  IJK_AV_DICT_MATCH_CASE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (TYPE_2__*,char const*,int,int /*<<< orphan*/ **) ; 
 int FUNC11 (TYPE_2__*) ; 

int FUNC12(IjkIOManagerContext *h, const char *url, int flags, IjkAVDictionary **options) {
    int ret = -1;
    int parse_cache_map_file = 0;
    if (!h)
        return ret;

    if (!h->ijkio_app_ctx) {
        return -1;
    }

    IjkAVDictionaryEntry *t = NULL;
    t = FUNC0(*options, "cache_file_path", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        FUNC8(h->ijkio_app_ctx->cache_file_path, t->value);
    }

    t = FUNC0(*options, "cache_map_path", NULL, IJK_AV_DICT_MATCH_CASE);
    if (t) {
        FUNC8(h->cache_map_path, t->value);

        t = FUNC0(*options, "auto_save_map", NULL, IJK_AV_DICT_MATCH_CASE);
        if (t) {
            h->auto_save_map = (int)FUNC9(t->value, NULL, 10);
        }

        if (h->ijkio_app_ctx->cache_info_map && !FUNC4(h->ijkio_app_ctx->cache_info_map)) {
            t = FUNC0(*options, "parse_cache_map", NULL, IJK_AV_DICT_MATCH_CASE);
            if (t) {
                parse_cache_map_file = (int)FUNC9(t->value, NULL, 10);
                if (parse_cache_map_file) {
                    FUNC6(h->ijkio_app_ctx, h->cache_map_path);
                }
            }
        }
    }

    h->ijkio_app_ctx->ijkio_interrupt_callback = h->ijkio_interrupt_callback;

    IjkURLContext *inner = NULL;
    FUNC5(&inner, url);
    if (inner) {
        inner->ijkio_app_ctx = h->ijkio_app_ctx;
        if (h->ijk_ctx_map) {
            FUNC7(h);
            inner->state = IJKURL_STARTED;
            FUNC2(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx, inner);
        }
        ret = inner->prot->url_open2(inner, url, flags, options);
        if (ret != 0)
            goto fail;

        return ret;
    }

fail:
    if (inner) {
        if (inner->prot && inner->prot->url_close)
            ret = inner->prot->url_close(inner);

        if (h->ijk_ctx_map) {
            FUNC3(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx);
        }
        FUNC1(&inner->priv_data);
        FUNC1(&inner);
    }
    return -1;
}