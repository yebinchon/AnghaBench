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
struct x86_exception {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  sig ;

/* Variables and functions */
 int EMULTYPE_TRAP_UD ; 
 int EMULTYPE_TRAP_UD_FORCED ; 
 scalar_t__ force_emulation_prefix ; 
 int FUNC0 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,char*,int,struct x86_exception*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int FUNC6(struct kvm_vcpu *vcpu)
{
	int emul_type = EMULTYPE_TRAP_UD;
	char sig[5]; /* ud2; .ascii "kvm" */
	struct x86_exception e;

	if (force_emulation_prefix &&
	    FUNC2(vcpu, FUNC1(vcpu),
				sig, sizeof(sig), &e) == 0 &&
	    FUNC5(sig, "\xf\xbkvm", sizeof(sig)) == 0) {
		FUNC4(vcpu, FUNC3(vcpu) + sizeof(sig));
		emul_type = EMULTYPE_TRAP_UD_FORCED;
	}

	return FUNC0(vcpu, emul_type);
}