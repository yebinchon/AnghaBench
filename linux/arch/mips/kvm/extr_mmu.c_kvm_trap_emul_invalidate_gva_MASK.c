#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * pgd; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pgd; } ;
struct TYPE_6__ {TYPE_2__ guest_user_mm; TYPE_1__ guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm_vcpu *vcpu, unsigned long addr,
				  bool user)
{
	pgd_t *pgdp;
	pte_t *ptep;

	addr &= PAGE_MASK << 1;

	pgdp = vcpu->arch.guest_kernel_mm.pgd;
	ptep = FUNC1(pgdp, NULL, addr);
	if (ptep) {
		ptep[0] = FUNC2(0, FUNC0(0));
		ptep[1] = FUNC2(0, FUNC0(0));
	}

	if (user) {
		pgdp = vcpu->arch.guest_user_mm.pgd;
		ptep = FUNC1(pgdp, NULL, addr);
		if (ptep) {
			ptep[0] = FUNC2(0, FUNC0(0));
			ptep[1] = FUNC2(0, FUNC0(0));
		}
	}
}