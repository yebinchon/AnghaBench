#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {TYPE_1__ pio; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu)
{
	FUNC0(!vcpu->arch.pio.count);

	return FUNC1(vcpu);
}