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
typedef  int u64 ;
typedef  int u32 ;
struct vmx_msr_entry {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu,
				       u32 count, u64 addr)
{
	int maxphyaddr;

	if (count == 0)
		return 0;
	maxphyaddr = FUNC1(vcpu);
	if (!FUNC0(addr, 16) || addr >> maxphyaddr ||
	    (addr + count * sizeof(struct vmx_msr_entry) - 1) >> maxphyaddr)
		return -EINVAL;

	return 0;
}