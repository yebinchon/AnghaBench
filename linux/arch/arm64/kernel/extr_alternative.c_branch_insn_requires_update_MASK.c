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
struct alt_instr {unsigned long alt_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct alt_instr*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct alt_instr *alt, unsigned long pc)
{
	unsigned long replptr;

	if (FUNC2(pc))
		return true;

	replptr = (unsigned long)FUNC0(alt);
	if (pc >= replptr && pc <= (replptr + alt->alt_len))
		return false;

	/*
	 * Branching into *another* alternate sequence is doomed, and
	 * we're not even trying to fix it up.
	 */
	FUNC1();
}