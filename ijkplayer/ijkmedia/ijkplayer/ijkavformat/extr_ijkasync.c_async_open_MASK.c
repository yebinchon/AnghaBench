#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  is_streamed; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_15__ {int /*<<< orphan*/  is_streamed; } ;
struct TYPE_14__ {TYPE_1__* opaque; int /*<<< orphan*/  callback; } ;
struct TYPE_13__ {int /*<<< orphan*/  ring; TYPE_5__* inner; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_background; int /*<<< orphan*/  async_buffer_thread; int /*<<< orphan*/  logical_size; int /*<<< orphan*/  interrupt_callback; scalar_t__ app_ctx_intptr; int /*<<< orphan*/ * app_ctx; int /*<<< orphan*/  backwards_capacity; int /*<<< orphan*/  forwards_capacity; } ;
typedef  TYPE_2__ Context ;
typedef  TYPE_3__ AVIOInterruptCB ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVApplicationContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  async_buffer_task ; 
 int /*<<< orphan*/  async_check_interrupt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__**,char const*,int,TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    Context         *c = h->priv_data;
    int              ret;
    AVIOInterruptCB  interrupt_callback = {.callback = async_check_interrupt, .opaque = h};

    FUNC3(arg, "async:", &arg);

    ret = FUNC13(&c->ring, c->forwards_capacity, c->backwards_capacity);
    if (ret < 0)
        goto fifo_fail;

    if (c->app_ctx_intptr) {
        c->app_ctx = (AVApplicationContext *)(intptr_t)c->app_ctx_intptr;
        FUNC0(options, "ijkapplication", c->app_ctx_intptr, 0);
    }
    /* wrap interrupt callback */
    c->interrupt_callback = h->interrupt_callback;
    ret = FUNC5(&c->inner, arg, flags, &interrupt_callback, options, h->protocol_whitelist, h->protocol_blacklist, h);
    if (ret != 0) {
        FUNC2(h, AV_LOG_ERROR, "ffurl_open_whitelist failed : %s, %s\n", FUNC1(ret), arg);
        goto url_fail;
    }

    c->logical_size = FUNC6(c->inner);
    h->is_streamed  = c->inner->is_streamed;

    ret = FUNC11(&c->mutex, NULL);
    if (ret != 0) {
        FUNC2(h, AV_LOG_ERROR, "pthread_mutex_init failed : %s\n", FUNC1(ret));
        goto mutex_fail;
    }

    ret = FUNC8(&c->cond_wakeup_main, NULL);
    if (ret != 0) {
        FUNC2(h, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", FUNC1(ret));
        goto cond_wakeup_main_fail;
    }

    ret = FUNC8(&c->cond_wakeup_background, NULL);
    if (ret != 0) {
        FUNC2(h, AV_LOG_ERROR, "pthread_cond_init failed : %s\n", FUNC1(ret));
        goto cond_wakeup_background_fail;
    }

    ret = FUNC9(&c->async_buffer_thread, NULL, async_buffer_task, h);
    if (ret) {
        FUNC2(h, AV_LOG_ERROR, "pthread_create failed : %s\n", FUNC1(ret));
        goto thread_fail;
    }

    return 0;

thread_fail:
    FUNC7(&c->cond_wakeup_background);
cond_wakeup_background_fail:
    FUNC7(&c->cond_wakeup_main);
cond_wakeup_main_fail:
    FUNC10(&c->mutex);
mutex_fail:
    FUNC4(c->inner);
url_fail:
    FUNC12(&c->ring);
fifo_fail:
    return ret;
}