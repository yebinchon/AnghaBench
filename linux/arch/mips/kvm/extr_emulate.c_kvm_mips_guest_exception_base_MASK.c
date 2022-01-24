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
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 long FUNC0 (int) ; 
 long MIPS_EBASE_BASE ; 
 int ST0_BEV ; 
 long FUNC1 (struct mips_coproc*) ; 
 int FUNC2 (struct mips_coproc*) ; 

long FUNC3(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;

	if (FUNC2(cop0) & ST0_BEV)
		return FUNC0(0x1fc00200);
	else
		return FUNC1(cop0) & MIPS_EBASE_BASE;
}