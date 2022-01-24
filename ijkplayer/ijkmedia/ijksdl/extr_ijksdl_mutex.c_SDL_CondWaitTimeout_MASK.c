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
typedef  int uint32_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SDL_mutex ;
typedef  TYPE_1__ SDL_cond ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int SDL_MUTEX_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 

int FUNC3(SDL_cond *cond, SDL_mutex *mutex, uint32_t ms)
{
    int retval;
    struct timeval delta;
    struct timespec abstime;

    FUNC0(cond);
    FUNC0(mutex);
    if (!cond || !mutex) {
        return -1;
    }

    FUNC1(&delta, NULL);

    abstime.tv_sec = delta.tv_sec + (ms / 1000);
    abstime.tv_nsec = (delta.tv_usec + (ms % 1000) * 1000) * 1000;
    if (abstime.tv_nsec > 1000000000) {
        abstime.tv_sec += 1;
        abstime.tv_nsec -= 1000000000;
    }

    while (1) {
        retval = FUNC2(&cond->id, &mutex->id, &abstime);
        if (retval == 0)
            return 0;
        else if (retval == EINTR)
            continue;
        else if (retval == ETIMEDOUT)
            return SDL_MUTEX_TIMEDOUT;
        else
            break;
    }

    return -1;
}