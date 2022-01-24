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
struct TYPE_2__ {scalar_t__ online_vcores; int /*<<< orphan*/ * vcores; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 long KVM_MAX_VCORES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct kvm *kvm)
{
	long int i;

	for (i = 0; i < KVM_MAX_VCORES; ++i)
		FUNC0(kvm->arch.vcores[i]);
	kvm->arch.online_vcores = 0;
}