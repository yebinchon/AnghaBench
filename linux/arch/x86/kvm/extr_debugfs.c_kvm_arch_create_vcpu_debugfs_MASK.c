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
struct kvm_vcpu {int /*<<< orphan*/  debugfs_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 scalar_t__ kvm_has_tsc_control ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  vcpu_timer_advance_ns_fops ; 
 int /*<<< orphan*/  vcpu_tsc_offset_fops ; 
 int /*<<< orphan*/  vcpu_tsc_scaling_fops ; 
 int /*<<< orphan*/  vcpu_tsc_scaling_frac_fops ; 

void FUNC2(struct kvm_vcpu *vcpu)
{
	FUNC0("tsc-offset", 0444, vcpu->debugfs_dentry, vcpu,
			    &vcpu_tsc_offset_fops);

	if (FUNC1(vcpu))
		FUNC0("lapic_timer_advance_ns", 0444,
				    vcpu->debugfs_dentry, vcpu,
				    &vcpu_timer_advance_ns_fops);

	if (kvm_has_tsc_control) {
		FUNC0("tsc-scaling-ratio", 0444,
				    vcpu->debugfs_dentry, vcpu,
				    &vcpu_tsc_scaling_fops);
		FUNC0("tsc-scaling-ratio-frac-bits", 0444,
				    vcpu->debugfs_dentry, vcpu,
				    &vcpu_tsc_scaling_frac_fops);
	}
}