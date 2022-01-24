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
struct TYPE_6__ {int /*<<< orphan*/  fpu_reload; } ;
struct TYPE_5__ {TYPE_1__* user_fpu; int /*<<< orphan*/  guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ stat; TYPE_2__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	FUNC2();

	FUNC0(vcpu->arch.guest_fpu);
	FUNC1(&vcpu->arch.user_fpu->state);

	FUNC3();
	FUNC4();

	++vcpu->stat.fpu_reload;
	FUNC5(0);
}