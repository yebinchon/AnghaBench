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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUSTAT_STOPPED ; 
 int EFAULT ; 
 int SIGP_CC_STATUS_STORED ; 
 int SIGP_STATUS_INCORRECT_STATE ; 
 int SIGP_STATUS_INVALID_PARAMETER ; 
 int FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu,
				       struct kvm_vcpu *dst_vcpu,
				       u32 addr, u64 *reg)
{
	int rc;

	if (!FUNC1(dst_vcpu, CPUSTAT_STOPPED)) {
		*reg &= 0xffffffff00000000UL;
		*reg |= SIGP_STATUS_INCORRECT_STATE;
		return SIGP_CC_STATUS_STORED;
	}

	addr &= 0x7ffffe00;
	rc = FUNC0(dst_vcpu, addr);
	if (rc == -EFAULT) {
		*reg &= 0xffffffff00000000UL;
		*reg |= SIGP_STATUS_INVALID_PARAMETER;
		rc = SIGP_CC_STATUS_STORED;
	}
	return rc;
}