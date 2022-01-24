#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* priv_data; TYPE_1__* prot; } ;
struct TYPE_9__ {int abort_request; TYPE_4__* inner; scalar_t__ inner_options; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  cond_wakeup_exit; int /*<<< orphan*/  cond_wakeup_main; int /*<<< orphan*/  cond_wakeup_file_background; scalar_t__ task_is_running; scalar_t__ cache_file_forwards_capacity; } ;
struct TYPE_8__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int (* url_close ) (TYPE_4__*) ;} ;
typedef  TYPE_2__ IjkURLContext ;
typedef  TYPE_3__ IjkIOCacheContext ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC10(IjkURLContext *h) {
    IjkIOCacheContext *c = h->priv_data;
    int              ret = 0;

    if (!c || !c->inner || !c->inner->prot)
        return FUNC0(ENOSYS);

    if (c->cache_file_forwards_capacity) {
        FUNC7(&c->file_mutex);
        c->abort_request = 1;
        FUNC4(&c->cond_wakeup_file_background);
        while (c->task_is_running) {
            FUNC5(&c->cond_wakeup_exit, &c->file_mutex);
        }
        FUNC8(&c->file_mutex);
    } else {
        c->abort_request = 1;
    }

    FUNC3(&c->cond_wakeup_file_background);
    FUNC3(&c->cond_wakeup_main);
    FUNC3(&c->cond_wakeup_exit);
    FUNC6(&c->file_mutex);

    ret = c->inner->prot->url_close(c->inner);

    if (c->inner_options) {
        FUNC1(&c->inner_options);
    }
    FUNC2(&c->inner->priv_data);

    FUNC2(&c->inner);
    return ret;
}