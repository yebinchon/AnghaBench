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
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  scalar_t__ SDL_ThreadPriority ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SDL_THREAD_PRIORITY_HIGH ; 
 scalar_t__ SDL_THREAD_PRIORITY_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,struct sched_param*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int) ; 

int FUNC6(SDL_ThreadPriority priority)
{
    struct sched_param sched;
    int policy;
    pthread_t thread = FUNC2();

    if (FUNC1(thread, &policy, &sched) < 0) {
        FUNC0("pthread_getschedparam() failed");
        return -1;
    }
    if (priority == SDL_THREAD_PRIORITY_LOW) {
        sched.sched_priority = FUNC5(policy);
    } else if (priority == SDL_THREAD_PRIORITY_HIGH) {
        sched.sched_priority = FUNC4(policy);
    } else {
        int min_priority = FUNC5(policy);
        int max_priority = FUNC4(policy);
        sched.sched_priority = (min_priority + (max_priority - min_priority) / 2);
    }
    if (FUNC3(thread, policy, &sched) < 0) {
        FUNC0("pthread_setschedparam() failed");
        return -1;
    }
    return 0;
}