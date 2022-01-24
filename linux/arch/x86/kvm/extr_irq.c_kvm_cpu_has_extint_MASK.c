#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
struct TYPE_5__ {TYPE_1__* vpic; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {int output; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *v)
{
	u8 accept = FUNC1(v);

	if (accept) {
		if (FUNC0(v->kvm))
			return FUNC2(v);
		else
			return v->kvm->arch.vpic->output;
	} else
		return 0;
}