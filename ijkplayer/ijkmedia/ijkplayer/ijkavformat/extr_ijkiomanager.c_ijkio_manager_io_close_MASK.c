#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {scalar_t__ cur_ffmpeg_ctx; int /*<<< orphan*/  ijk_ctx_map; } ;
struct TYPE_9__ {struct TYPE_9__* priv_data; TYPE_1__* prot; } ;
struct TYPE_8__ {int (* url_close ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOManagerContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

int FUNC4(IjkIOManagerContext *h) {
    int ret = -1;
    if (!h)
        return ret;

    IjkURLContext *inner = FUNC1(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx);
    if (inner) {
        if (inner->prot && inner->prot->url_close) {
            ret = inner->prot->url_close(inner);
        }
        FUNC2(h->ijk_ctx_map, (int64_t)(intptr_t)h->cur_ffmpeg_ctx);
        FUNC0(&inner->priv_data);
        FUNC0(&inner);
    }

    return ret;
}