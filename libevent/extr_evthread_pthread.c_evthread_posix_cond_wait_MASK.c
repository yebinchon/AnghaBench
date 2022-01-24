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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;
typedef  int /*<<< orphan*/  pthread_cond_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,struct timeval const*,struct timeval*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void *cond_, void *lock_, const struct timeval *tv)
{
	int r;
	pthread_cond_t *cond = cond_;
	pthread_mutex_t *lock = lock_;

	if (tv) {
		struct timeval now, abstime;
		struct timespec ts;
		FUNC0(&now, NULL);
		FUNC1(&now, tv, &abstime);
		ts.tv_sec = abstime.tv_sec;
		ts.tv_nsec = abstime.tv_usec*1000;
		r = FUNC2(cond, lock, &ts);
		if (r == ETIMEDOUT)
			return 1;
		else if (r)
			return -1;
		else
			return 0;
	} else {
		r = FUNC3(cond, lock);
		return r ? -1 : 0;
	}
}