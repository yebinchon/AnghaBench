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
typedef  int /*<<< orphan*/  u32 ;
struct mips_coproc {int dummy; } ;
struct TYPE_2__ {struct mips_coproc* cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mips_coproc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	struct mips_coproc *cop0 = vcpu->arch.cop0;
	u32 cause, compare;

	compare = FUNC2(cop0);
	cause = FUNC1(cop0);

	FUNC3(compare);
	FUNC0(vcpu, compare, cause);
}