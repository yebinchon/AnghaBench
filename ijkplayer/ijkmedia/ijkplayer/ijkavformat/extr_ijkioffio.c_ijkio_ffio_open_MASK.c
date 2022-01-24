#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  inner; } ;
struct TYPE_6__ {TYPE_1__* ijkio_app_ctx; TYPE_3__* priv_data; } ;
struct TYPE_5__ {scalar_t__ ijkio_interrupt_callback; } ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOFFioContext ;
typedef  int /*<<< orphan*/  IjkAVDictionary ;
typedef  int /*<<< orphan*/  AVIOInterruptCB ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(IjkURLContext *h, const char *url, int flags, IjkAVDictionary **options) {
    int ret = -1;

    IjkIOFFioContext *c= h->priv_data;
    if (!c)
        return -1;

    AVDictionary *opts = NULL;
    FUNC3(&opts, *options);

    FUNC1(url, "ffio:", &url);
    if (h->ijkio_app_ctx) {
        ret = FUNC2(&c->inner, url, flags, (AVIOInterruptCB *)h->ijkio_app_ctx->ijkio_interrupt_callback,
                                &opts, NULL, NULL, NULL);
    } else {
        ret = -1;
    }

    FUNC0(&opts);

    return ret;
}