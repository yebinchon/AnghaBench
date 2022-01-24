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
struct kvm_vcpu {int /*<<< orphan*/  ready; } ;
struct kvm_apic_map {unsigned long max_apic_id; TYPE_2__** phys_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  apic_map; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_4__ {struct kvm_vcpu* vcpu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_apic_map*) ; 
 struct kvm_apic_map* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm, unsigned long dest_id)
{
	struct kvm_vcpu *target = NULL;
	struct kvm_apic_map *map;

	FUNC4();
	map = FUNC3(kvm->arch.apic_map);

	if (FUNC2(map) && dest_id <= map->max_apic_id && map->phys_map[dest_id])
		target = map->phys_map[dest_id]->vcpu;

	FUNC5();

	if (target && FUNC0(target->ready))
		FUNC1(target);
}