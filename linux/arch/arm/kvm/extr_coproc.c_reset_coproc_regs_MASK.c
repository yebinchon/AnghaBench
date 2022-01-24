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
struct kvm_vcpu {int dummy; } ;
struct coproc_reg {int reg; scalar_t__ is_64bit; int /*<<< orphan*/  (* reset ) (struct kvm_vcpu*,struct coproc_reg const*) ;} ;

/* Variables and functions */
 int NR_CP15_REGS ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,struct coproc_reg const*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu,
			      const struct coproc_reg *table, size_t num,
			      unsigned long *bmap)
{
	unsigned long i;

	for (i = 0; i < num; i++)
		if (table[i].reset) {
			int reg = table[i].reg;

			table[i].reset(vcpu, &table[i]);
			if (reg > 0 && reg < NR_CP15_REGS) {
				FUNC0(reg, bmap);
				if (table[i].is_64bit)
					FUNC0(reg + 1, bmap);
			}
		}
}