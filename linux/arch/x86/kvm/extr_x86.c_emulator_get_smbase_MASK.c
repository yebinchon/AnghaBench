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
typedef  int /*<<< orphan*/  u64 ;
struct x86_emulate_ctxt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  smbase; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 struct kvm_vcpu* FUNC0 (struct x86_emulate_ctxt*) ; 

__attribute__((used)) static u64 FUNC1(struct x86_emulate_ctxt *ctxt)
{
	struct kvm_vcpu *vcpu = FUNC0(ctxt);

	return vcpu->arch.smbase;
}