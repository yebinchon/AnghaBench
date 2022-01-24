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
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;

/* Variables and functions */
 int FUNC0 (struct pt_regs*,unsigned long,unsigned long) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct pt_regs *regs, unsigned long address,
		  unsigned long error_code)
{
	enum ctx_state prev_state = FUNC1();
	int rc = FUNC0(regs, address, error_code);
	FUNC2(prev_state);
	return rc;
}