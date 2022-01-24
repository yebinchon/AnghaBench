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
struct undef_hook {scalar_t__ instr_mask; } ;
struct insn_emulation_ops {int /*<<< orphan*/  name; struct undef_hook* hooks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct undef_hook*) ; 

__attribute__((used)) static void FUNC3(struct insn_emulation_ops *ops)
{
	struct undef_hook *hook;

	FUNC0(!ops->hooks);

	for (hook = ops->hooks; hook->instr_mask; hook++)
		FUNC2(hook);

	FUNC1("Removed %s emulation handler\n", ops->name);
}