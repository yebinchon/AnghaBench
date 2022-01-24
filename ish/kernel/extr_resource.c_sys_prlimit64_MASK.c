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
struct rlimit_ {scalar_t__ cur; int max; } ;
typedef  scalar_t__ pid_t_ ;
typedef  int dword_t ;
typedef  scalar_t__ addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int _EFAULT ; 
 int _EINVAL ; 
 int FUNC1 (int,struct rlimit_) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct rlimit_*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct rlimit_) ; 
 scalar_t__ FUNC4 (scalar_t__,struct rlimit_) ; 
 scalar_t__ FUNC5 (scalar_t__,struct rlimit_) ; 

dword_t FUNC6(pid_t_ pid, dword_t resource, addr_t new_limit_addr, addr_t old_limit_addr) {
    FUNC0("prlimit64(%d, %d)", pid, resource);
    if (pid != 0)
        return _EINVAL;

    if (old_limit_addr != 0) {
        struct rlimit_ rlimit;
        int err = FUNC2(current, resource, &rlimit);
        if (err < 0)
            return err;
        FUNC0(" old={cur=%#x, max=%#x}", rlimit.cur, rlimit.max);
        if (FUNC5(old_limit_addr, rlimit))
            return _EFAULT;
    }

    if (new_limit_addr != 0) {
        struct rlimit_ rlimit;
        if (FUNC4(new_limit_addr, rlimit))
            return _EFAULT;
        FUNC0(" new={cur=%#x, max=%#x}", rlimit.cur, rlimit.max);
        int err = FUNC1(resource, rlimit);
        if (err < 0)
            return err;
        return FUNC3(current, resource, rlimit);
    }
    return 0;
}