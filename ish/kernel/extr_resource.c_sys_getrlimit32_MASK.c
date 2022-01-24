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
struct rlimit32_ {int dummy; } ;
typedef  int dword_t ;
typedef  int /*<<< orphan*/  addr_t ;

/* Variables and functions */
 int _EFAULT ; 
 int FUNC0 (int,struct rlimit32_*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct rlimit32_) ; 

dword_t FUNC2(dword_t resource, addr_t rlim_addr) {
    struct rlimit32_ rlimit;
    int err = FUNC0(resource, &rlimit);
    if (err < 0)
        return err;
    if (FUNC1(rlim_addr, rlimit))
        return _EFAULT;
    return 0;
}