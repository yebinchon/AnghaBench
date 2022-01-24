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
struct timespec_ {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct timespec {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EFAULT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct timespec*,struct timespec*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct timespec_) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct timespec_) ; 

dword_t FUNC5(addr_t req_addr, addr_t rem_addr) {
    struct timespec_ req_ts;
    if (FUNC3(req_addr, req_ts))
        return _EFAULT;
    FUNC0("nanosleep({%d, %d}, 0x%x", req_ts.sec, req_ts.nsec, rem_addr);
    struct timespec req;
    req.tv_sec = req_ts.sec;
    req.tv_nsec = req_ts.nsec;
    struct timespec rem;
    if (FUNC2(&req, &rem) < 0)
        return FUNC1();
    if (rem_addr != 0) {
        struct timespec_ rem_ts;
        rem_ts.sec = rem.tv_sec;
        rem_ts.nsec = rem.tv_nsec;
        if (FUNC4(rem_addr, rem_ts))
            return _EFAULT;
    }
    return 0;
}