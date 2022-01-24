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
struct rlimit_ {int /*<<< orphan*/  max; int /*<<< orphan*/  cur; } ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _EFAULT ; 
 int FUNC1 (int,struct rlimit_) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct rlimit_) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rlimit_) ; 

dword_t FUNC4(dword_t resource, addr_t rlim_addr) {
    struct rlimit_ rlimit;
    if (FUNC3(rlim_addr, rlimit))
        return _EFAULT;
    FUNC0("setrlimit(%d, {cur=%#x, max=%#x})", resource, rlimit.cur, rlimit.max);
    int err = FUNC1(resource, rlimit);
    if (err < 0)
        return err;
    return FUNC2(current, resource, rlimit);
}