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
typedef  int /*<<< orphan*/  uv_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  blocker ; 
 int /*<<< orphan*/  numlock ; 
 int /*<<< orphan*/  reader ; 
 scalar_t__ shared_num ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  writer ; 

int FUNC6()
{
    FUNC1(&blocker, 4);

    shared_num = 0;
    FUNC4(&numlock);

    uv_thread_t threads[3];

    int thread_nums[] = {1, 2, 1};
    FUNC5(&threads[0], reader, &thread_nums[0]);
    FUNC5(&threads[1], reader, &thread_nums[1]);

    FUNC5(&threads[2], writer, &thread_nums[2]);

    FUNC2(&blocker);
    FUNC0(&blocker);

    FUNC3(&numlock);
    return 0;
}