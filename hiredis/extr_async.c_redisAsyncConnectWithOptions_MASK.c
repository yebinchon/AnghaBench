#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ redisOptions ;
typedef  int /*<<< orphan*/  redisContext ;
typedef  int /*<<< orphan*/  redisAsyncContext ;

/* Variables and functions */
 int /*<<< orphan*/  REDIS_OPT_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

redisAsyncContext *FUNC4(const redisOptions *options) {
    redisOptions myOptions = *options;
    redisContext *c;
    redisAsyncContext *ac;

    myOptions.options |= REDIS_OPT_NONBLOCK;
    c = FUNC2(&myOptions);
    if (c == NULL) {
        return NULL;
    }
    ac = FUNC1(c);
    if (ac == NULL) {
        FUNC3(c);
        return NULL;
    }
    FUNC0(ac);
    return ac;
}