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
typedef  int /*<<< orphan*/  u64 ;
struct pt_regs {int dummy; } ;
struct hdat_fadump_reg_entry {int /*<<< orphan*/  reg_num; int /*<<< orphan*/  reg_type; int /*<<< orphan*/  reg_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(char *bufp, unsigned int regs_cnt,
					 unsigned int reg_entry_size,
					 bool cpu_endian,
					 struct pt_regs *regs)
{
	struct hdat_fadump_reg_entry *reg_entry;
	u64 val;
	int i;

	FUNC2(regs, 0, sizeof(struct pt_regs));

	for (i = 0; i < regs_cnt; i++, bufp += reg_entry_size) {
		reg_entry = (struct hdat_fadump_reg_entry *)bufp;
		val = (cpu_endian ? FUNC1(reg_entry->reg_val) :
		       reg_entry->reg_val);
		FUNC3(regs,
					      FUNC0(reg_entry->reg_type),
					      FUNC0(reg_entry->reg_num),
					      val);
	}
}