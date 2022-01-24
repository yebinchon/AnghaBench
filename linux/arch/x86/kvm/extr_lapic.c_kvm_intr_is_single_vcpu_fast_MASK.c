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
struct kvm_lapic_irq {scalar_t__ shorthand; } ;
struct kvm_lapic {struct kvm_vcpu* vcpu; } ;
struct kvm_apic_map {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  apic_map; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long*,int) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct kvm*,int /*<<< orphan*/ *,struct kvm_lapic_irq*,struct kvm_apic_map*,struct kvm_lapic***,unsigned long*) ; 
 struct kvm_apic_map* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

bool FUNC6(struct kvm *kvm, struct kvm_lapic_irq *irq,
			struct kvm_vcpu **dest_vcpu)
{
	struct kvm_apic_map *map;
	unsigned long bitmap;
	struct kvm_lapic **dst = NULL;
	bool ret = false;

	if (irq->shorthand)
		return false;

	FUNC4();
	map = FUNC3(kvm->arch.apic_map);

	if (FUNC2(kvm, NULL, irq, map, &dst, &bitmap) &&
			FUNC1(bitmap) == 1) {
		unsigned long i = FUNC0(&bitmap, 16);

		if (dst[i]) {
			*dest_vcpu = dst[i]->vcpu;
			ret = true;
		}
	}

	FUNC5();
	return ret;
}