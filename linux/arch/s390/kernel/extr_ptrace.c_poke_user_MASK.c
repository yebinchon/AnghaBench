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
struct TYPE_2__ {int /*<<< orphan*/  orig_gpr2; int /*<<< orphan*/  acrs; } ;
struct user {TYPE_1__ regs; } ;
struct task_struct {int dummy; } ;
typedef  int addr_t ;

/* Variables and functions */
 int EIO ; 
 int __ADDR_MASK ; 
 int FUNC0 (struct task_struct*,int,int) ; 

__attribute__((used)) static int FUNC1(struct task_struct *child, addr_t addr, addr_t data)
{
	addr_t mask;

	/*
	 * Stupid gdb peeks/pokes the access registers in 64 bit with
	 * an alignment of 4. Programmers from hell indeed...
	 */
	mask = __ADDR_MASK;
	if (addr >= (addr_t) &((struct user *) NULL)->regs.acrs &&
	    addr < (addr_t) &((struct user *) NULL)->regs.orig_gpr2)
		mask = 3;
	if ((addr & mask) || addr > sizeof(struct user) - __ADDR_MASK)
		return -EIO;

	return FUNC0(child, addr, data);
}