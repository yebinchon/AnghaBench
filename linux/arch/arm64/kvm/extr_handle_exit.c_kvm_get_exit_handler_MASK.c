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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int dummy; } ;
typedef  int /*<<< orphan*/  exit_handle_fn ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * arm_exit_handlers ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static exit_handle_fn FUNC2(struct kvm_vcpu *vcpu)
{
	u32 hsr = FUNC1(vcpu);
	u8 hsr_ec = FUNC0(hsr);

	return arm_exit_handlers[hsr_ec];
}