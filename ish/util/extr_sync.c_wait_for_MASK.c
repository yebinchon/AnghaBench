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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  lock_t ;
typedef  int /*<<< orphan*/  cond_t ;

/* Variables and functions */
 int _EINTR ; 
 int _ETIMEDOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 

int FUNC2(cond_t *cond, lock_t *lock, struct timespec *timeout) {
    if (FUNC0(lock))
        return _EINTR;
    int err = FUNC1(cond, lock, timeout);
    if (err < 0)
        return _ETIMEDOUT;
    if (FUNC0(lock))
        return _EINTR;
    return 0;
}