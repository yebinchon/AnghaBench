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
struct vcpu_vmx {unsigned int ple_window; int ple_window_dirty; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ple_window ; 
 int /*<<< orphan*/  ple_window_grow ; 
 int /*<<< orphan*/  ple_window_max ; 
 struct vcpu_vmx* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC1(vcpu);
	unsigned int old = vmx->ple_window;

	vmx->ple_window = FUNC0(old, ple_window,
					    ple_window_grow,
					    ple_window_max);

	if (vmx->ple_window != old) {
		vmx->ple_window_dirty = true;
		FUNC2(vcpu->vcpu_id,
					    vmx->ple_window, old);
	}
}