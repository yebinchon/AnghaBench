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
typedef  int /*<<< orphan*/  int_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _EFAULT ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int_t FUNC2(addr_t rgid_addr, addr_t egid_addr, addr_t sgid_addr) {
    FUNC0("getresgid(%#x, %#x, %#x)", rgid_addr, egid_addr, sgid_addr);
    if (FUNC1(rgid_addr, current->gid))
        return _EFAULT;
    if (FUNC1(egid_addr, current->egid))
        return _EFAULT;
    if (FUNC1(sgid_addr, current->sgid))
        return _EFAULT;
    return 0;
}