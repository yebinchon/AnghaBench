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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u16 ;
struct kvmppc_vcpu_book3s {size_t vsid_next; int /*<<< orphan*/ * vsid_pool; struct kvmppc_sid_map* sid_map; } ;
struct kvmppc_sid_map {int valid; int /*<<< orphan*/  guest_vsid; int /*<<< orphan*/  host_vsid; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int MSR_PR ; 
 size_t SID_MAP_MASK ; 
 int SID_MAP_NUM ; 
 size_t VSID_POOL_SIZE ; 
 int /*<<< orphan*/  VSID_PR ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_sid_map*,int /*<<< orphan*/ ,int) ; 
 struct kvmppc_vcpu_book3s* FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static struct kvmppc_sid_map *FUNC6(struct kvm_vcpu *vcpu, u64 gvsid)
{
	struct kvmppc_sid_map *map;
	struct kvmppc_vcpu_book3s *vcpu_book3s = FUNC5(vcpu);
	u16 sid_map_mask;
	static int backwards_map = 0;

	if (FUNC0(vcpu) & MSR_PR)
		gvsid |= VSID_PR;

	/* We might get collisions that trap in preceding order, so let's
	   map them differently */

	sid_map_mask = FUNC3(vcpu, gvsid);
	if (backwards_map)
		sid_map_mask = SID_MAP_MASK - sid_map_mask;

	map = &FUNC5(vcpu)->sid_map[sid_map_mask];

	/* Make sure we're taking the other map next time */
	backwards_map = !backwards_map;

	/* Uh-oh ... out of mappings. Let's flush! */
	if (vcpu_book3s->vsid_next >= VSID_POOL_SIZE) {
		vcpu_book3s->vsid_next = 0;
		FUNC4(vcpu_book3s->sid_map, 0,
		       sizeof(struct kvmppc_sid_map) * SID_MAP_NUM);
		FUNC2(vcpu, 0, 0);
		FUNC1(vcpu);
	}
	map->host_vsid = vcpu_book3s->vsid_pool[vcpu_book3s->vsid_next];
	vcpu_book3s->vsid_next++;

	map->guest_vsid = gvsid;
	map->valid = true;

	return map;
}