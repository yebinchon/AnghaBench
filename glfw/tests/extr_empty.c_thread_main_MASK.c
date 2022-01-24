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
struct timespec {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void* data)
{
    struct timespec time;

    while (running)
    {
        FUNC0(CLOCK_REALTIME, &time);
        time.tv_sec += 1;
        FUNC2(&time, NULL);

        FUNC1();
    }

    return 0;
}