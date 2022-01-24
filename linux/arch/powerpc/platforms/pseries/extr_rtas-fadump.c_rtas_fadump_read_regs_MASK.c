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
struct rtas_fadump_reg_entry {int /*<<< orphan*/  reg_value; int /*<<< orphan*/  reg_id; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct rtas_fadump_reg_entry*
FUNC4(struct rtas_fadump_reg_entry *reg_entry,
		      struct pt_regs *regs)
{
	FUNC2(regs, 0, sizeof(struct pt_regs));

	while (FUNC0(reg_entry->reg_id) != FUNC1("CPUEND")) {
		FUNC3(regs, FUNC0(reg_entry->reg_id),
				       FUNC0(reg_entry->reg_value));
		reg_entry++;
	}
	reg_entry++;
	return reg_entry;
}