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
struct coproc_params {int CRm; int Rt1; int is_write; int is_64bit; int CRn; int Op1; int Op2; scalar_t__ Rt2; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_vcpu*) ; 

__attribute__((used)) static struct coproc_params FUNC1(struct kvm_vcpu *vcpu)
{
	struct coproc_params params;

	params.CRm = (FUNC0(vcpu) >> 1) & 0xf;
	params.Rt1 = (FUNC0(vcpu) >> 5) & 0xf;
	params.is_write = ((FUNC0(vcpu) & 1) == 0);
	params.is_64bit = false;

	params.CRn = (FUNC0(vcpu) >> 10) & 0xf;
	params.Op1 = (FUNC0(vcpu) >> 14) & 0x7;
	params.Op2 = (FUNC0(vcpu) >> 17) & 0x7;
	params.Rt2 = 0;

	return params;
}