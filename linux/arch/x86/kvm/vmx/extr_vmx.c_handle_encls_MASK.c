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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UD_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct kvm_vcpu *vcpu)
{
	/*
	 * SGX virtualization is not yet supported.  There is no software
	 * enable bit for SGX, so we have to trap ENCLS and inject a #UD
	 * to prevent the guest from executing ENCLS.
	 */
	FUNC0(vcpu, UD_VECTOR);
	return 1;
}