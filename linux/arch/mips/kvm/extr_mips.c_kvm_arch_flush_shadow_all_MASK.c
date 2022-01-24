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
struct kvm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_shadow_all ) (struct kvm*) ;} ;

/* Variables and functions */
 TYPE_1__* kvm_mips_callbacks ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 

void FUNC2(struct kvm *kvm)
{
	/* Flush whole GPA */
	FUNC0(kvm, 0, ~0);

	/* Let implementation do the rest */
	kvm_mips_callbacks->flush_shadow_all(kvm);
}