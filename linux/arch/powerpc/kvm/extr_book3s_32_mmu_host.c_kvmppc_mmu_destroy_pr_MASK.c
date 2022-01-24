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
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * context_id; } ;

/* Variables and functions */
 int SID_CONTEXTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (struct kvm_vcpu*) ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	int i;

	FUNC1(vcpu);
	FUNC2();
	for (i = 0; i < SID_CONTEXTS; i++)
		FUNC0(FUNC4(vcpu)->context_id[i]);
	FUNC3();
}