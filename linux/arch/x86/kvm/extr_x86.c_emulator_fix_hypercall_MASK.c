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
struct x86_emulate_ctxt {int /*<<< orphan*/  exception; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* patch_hypercall ) (struct kvm_vcpu*,char*) ;} ;

/* Variables and functions */
 struct kvm_vcpu* FUNC0 (struct x86_emulate_ctxt*) ; 
 int FUNC1 (struct x86_emulate_ctxt*,unsigned long,char*,int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (struct kvm_vcpu*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,char*) ; 

__attribute__((used)) static int FUNC4(struct x86_emulate_ctxt *ctxt)
{
	struct kvm_vcpu *vcpu = FUNC0(ctxt);
	char instruction[3];
	unsigned long rip = FUNC2(vcpu);

	kvm_x86_ops->patch_hypercall(vcpu, instruction);

	return FUNC1(ctxt, rip, instruction, 3,
		&ctxt->exception);
}