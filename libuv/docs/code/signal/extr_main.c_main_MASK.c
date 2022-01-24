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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  thread1_worker ; 
 int /*<<< orphan*/  thread2_worker ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4()
{
    FUNC1("PID %d\n", FUNC0());

    uv_thread_t thread1, thread2;

    FUNC2(&thread1, thread1_worker, 0);
    FUNC2(&thread2, thread2_worker, 0);

    FUNC3(&thread1);
    FUNC3(&thread2);
    return 0;
}