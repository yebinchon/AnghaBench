#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisContext ;
struct TYPE_6__ {int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ redisAsyncContext ;

/* Variables and functions */
 scalar_t__ REDIS_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);

    if (FUNC2(c) == REDIS_ERR) {
        FUNC1(ac);
    } else {
        /* Always re-schedule reads */
        FUNC0(ac);
        FUNC3(ac);
    }
}