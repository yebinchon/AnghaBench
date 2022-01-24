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
struct unwind_state {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct unwind_state*,unsigned long,int) ; 

__attribute__((used)) static bool FUNC2(struct unwind_state *state, unsigned long addr,
			    unsigned long *val)
{
	if (!FUNC1(state, addr, sizeof(long)))
		return false;

	*val = FUNC0(*(unsigned long *)addr);
	return true;
}