#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  linear_rip; } ;
struct TYPE_4__ {int /*<<< orphan*/  complete_userspace_io; TYPE_1__ pio; int /*<<< orphan*/  emulate_ctxt; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_X86_QUIRK_OUT_7E_INC_RIP ; 
 int /*<<< orphan*/  complete_fast_pio_out ; 
 int /*<<< orphan*/  complete_fast_pio_out_port_0x7e ; 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned short,unsigned long*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 unsigned long FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu, int size,
			    unsigned short port)
{
	unsigned long val = FUNC3(vcpu);
	int ret = FUNC0(&vcpu->arch.emulate_ctxt,
					    size, port, &val, 1);
	if (ret)
		return ret;

	/*
	 * Workaround userspace that relies on old KVM behavior of %rip being
	 * incremented prior to exiting to userspace to handle "OUT 0x7e".
	 */
	if (port == 0x7e &&
	    FUNC1(vcpu->kvm, KVM_X86_QUIRK_OUT_7E_INC_RIP)) {
		vcpu->arch.complete_userspace_io =
			complete_fast_pio_out_port_0x7e;
		FUNC4(vcpu);
	} else {
		vcpu->arch.pio.linear_rip = FUNC2(vcpu);
		vcpu->arch.complete_userspace_io = complete_fast_pio_out;
	}
	return 0;
}