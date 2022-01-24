#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fd_t ;
typedef  scalar_t__ dword_t ;
typedef  int /*<<< orphan*/  addr_t ;
struct TYPE_4__ {TYPE_1__* mem; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ MMAP_PRIVATE ; 
 scalar_t__ MMAP_SHARED ; 
 scalar_t__ P_RWX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  _EINVAL ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static addr_t FUNC4(addr_t addr, dword_t len, dword_t prot, dword_t flags, fd_t fd_no, dword_t offset) {
    FUNC0("mmap(0x%x, 0x%x, 0x%x, 0x%x, %d, %d)", addr, len, prot, flags, fd_no, offset);
    if (len == 0)
        return _EINVAL;
    if (prot & ~P_RWX)
        return _EINVAL;
    if ((flags & MMAP_PRIVATE) && (flags & MMAP_SHARED))
        return _EINVAL;

    FUNC2(&current->mem->lock);
    addr_t res = FUNC1(addr, len, prot, flags, fd_no, offset);
    FUNC3(&current->mem->lock);
    return res;
}