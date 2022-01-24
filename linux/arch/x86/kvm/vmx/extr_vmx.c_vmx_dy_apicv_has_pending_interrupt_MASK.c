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
struct pi_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pi_desc*) ; 
 scalar_t__ FUNC1 (struct pi_desc*) ; 
 scalar_t__ FUNC2 (struct pi_desc*) ; 
 struct pi_desc* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static bool FUNC4(struct kvm_vcpu *vcpu)
{
	struct pi_desc *pi_desc = FUNC3(vcpu);

	return FUNC1(pi_desc) ||
		(FUNC2(pi_desc) && !FUNC0(pi_desc));
}