#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  blocker ; 
 int /*<<< orphan*/  numlock ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int shared_num ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void *n)
{
    int num = *(int *)n;
    int i;
    for (i = 0; i < 20; i++) {
        FUNC2(&numlock);
        FUNC0("Writer %d: acquired lock\n", num);
        shared_num++;
        FUNC0("Writer %d: incremented shared num = %d\n", num, shared_num);
        FUNC3(&numlock);
        FUNC0("Writer %d: released lock\n", num);
    }
    FUNC1(&blocker);
}