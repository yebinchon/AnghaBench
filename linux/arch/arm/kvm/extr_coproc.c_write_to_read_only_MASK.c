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
struct coproc_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct coproc_params const*) ; 

__attribute__((used)) static bool FUNC3(struct kvm_vcpu *vcpu,
			       const struct coproc_params *params)
{
	FUNC0(1, "CP15 write to read-only register\n");
	FUNC2(params);
	FUNC1(vcpu);
	return false;
}