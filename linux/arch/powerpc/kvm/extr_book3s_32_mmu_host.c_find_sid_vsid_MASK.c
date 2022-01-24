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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u16 ;
struct kvmppc_sid_map {int /*<<< orphan*/  host_vsid; int /*<<< orphan*/  guest_vsid; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {struct kvmppc_sid_map* sid_map; } ;

/* Variables and functions */
 int MSR_PR ; 
 size_t SID_MAP_MASK ; 
 int /*<<< orphan*/  VSID_PR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct kvm_vcpu*) ; 
 size_t FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static struct kvmppc_sid_map *FUNC4(struct kvm_vcpu *vcpu, u64 gvsid)
{
	struct kvmppc_sid_map *map;
	u16 sid_map_mask;

	if (FUNC1(vcpu) & MSR_PR)
		gvsid |= VSID_PR;

	sid_map_mask = FUNC2(vcpu, gvsid);
	map = &FUNC3(vcpu)->sid_map[sid_map_mask];
	if (map->guest_vsid == gvsid) {
		FUNC0("SR: Searching 0x%llx -> 0x%llx\n",
			    gvsid, map->host_vsid);
		return map;
	}

	map = &FUNC3(vcpu)->sid_map[SID_MAP_MASK - sid_map_mask];
	if (map->guest_vsid == gvsid) {
		FUNC0("SR: Searching 0x%llx -> 0x%llx\n",
			    gvsid, map->host_vsid);
		return map;
	}

	FUNC0("SR: Searching 0x%llx -> not found\n", gvsid);
	return NULL;
}