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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  die_lock ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(const char *str, struct pt_regs *regs, long err)
{
	FUNC0();
	FUNC4(&die_lock);
	FUNC2("Oops: %s, sig: %ld\n", str, err);
	FUNC3(regs);
	FUNC5(&die_lock);
	/*
	 * do_exit() should take care of panic'ing from an interrupt
	 * context so we don't handle it here
	 */
	FUNC1(err);
}