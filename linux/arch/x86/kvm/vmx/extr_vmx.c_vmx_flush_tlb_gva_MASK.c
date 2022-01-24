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
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  gva_t ;
struct TYPE_2__ {int vpid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, gva_t addr)
{
	int vpid = FUNC0(vcpu)->vpid;

	if (!FUNC2(vpid, addr))
		FUNC1(vpid);

	/*
	 * If VPIDs are not supported or enabled, then the above is a no-op.
	 * But we don't really need a TLB flush in that case anyway, because
	 * each VM entry/exit includes an implicit flush when VPID is 0.
	 */
}