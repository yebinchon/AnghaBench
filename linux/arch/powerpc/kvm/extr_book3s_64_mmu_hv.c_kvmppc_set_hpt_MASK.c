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
struct kvm_hpt_info {int order; int /*<<< orphan*/  virt; } ;
struct TYPE_2__ {int sdr1; int /*<<< orphan*/  lpid; struct kvm_hpt_info hpt; int /*<<< orphan*/  mmio_update; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 

void FUNC3(struct kvm *kvm, struct kvm_hpt_info *info)
{
	FUNC1(&kvm->arch.mmio_update, 0);
	kvm->arch.hpt = *info;
	kvm->arch.sdr1 = FUNC0(info->virt) | (info->order - 18);

	FUNC2("KVM guest htab at %lx (order %ld), LPID %x\n",
		 info->virt, (long)info->order, kvm->arch.lpid);
}