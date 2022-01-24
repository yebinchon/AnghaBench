#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec_ {int nsec; int /*<<< orphan*/  sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_2__ {int usec; int /*<<< orphan*/  sec; } ;
struct rusage_ {TYPE_1__ utime; } ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  clockid_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
#define  CLOCK_MONOTONIC_ 129 
 int CLOCK_PROCESS_CPUTIME_ID_ ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
#define  CLOCK_REALTIME_ 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC2 () ; 
 struct rusage_ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timespec_) ; 

dword_t FUNC5(dword_t clock, addr_t tp) {
    FUNC0("clock_gettime(%d, 0x%x)", clock, tp);

    struct timespec ts;
    if (clock == CLOCK_PROCESS_CPUTIME_ID_) {
        // FIXME this is thread usage, not process usage
        struct rusage_ rusage = FUNC3();
        ts.tv_sec = rusage.utime.sec;
        ts.tv_nsec = rusage.utime.usec * 1000;
    } else {
        clockid_t clock_id;
        switch (clock) {
            case CLOCK_REALTIME_: clock_id = CLOCK_REALTIME; break;
            case CLOCK_MONOTONIC_: clock_id = CLOCK_MONOTONIC; break;
            default: return _EINVAL;
        }
        int err = FUNC1(clock_id, &ts);
        if (err < 0)
            return FUNC2();
    }
    struct timespec_ t;
    t.sec = ts.tv_sec;
    t.nsec = ts.tv_nsec;
    if (FUNC4(tp, t))
        return _EFAULT;
    return 0;
}