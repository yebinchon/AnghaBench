#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int abort_request; int /*<<< orphan*/  ring; int /*<<< orphan*/  inner; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_background; int /*<<< orphan*/  async_buffer_thread; } ;
typedef  TYPE_2__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(URLContext *h)
{
    Context *c = h->priv_data;
    int      ret;

    FUNC7(&c->mutex);
    c->abort_request = 1;
    FUNC4(&c->cond_wakeup_background);
    FUNC8(&c->mutex);

    ret = FUNC5(c->async_buffer_thread, NULL);
    if (ret != 0)
        FUNC1(h, AV_LOG_ERROR, "pthread_join(): %s\n", FUNC0(ret));

    FUNC3(&c->cond_wakeup_background);
    FUNC3(&c->cond_wakeup_main);
    FUNC6(&c->mutex);
    FUNC2(c->inner);
    FUNC9(&c->ring);

    return 0;
}