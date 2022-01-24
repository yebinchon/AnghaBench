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
typedef  unsigned int u64 ;
struct tlbe_ref {int flags; } ;
struct kvmppc_vcpu_e500 {scalar_t__ host_tlb1_nv; int* h2g_tlb1_rmap; unsigned long long* g2h_tlb1_map; TYPE_2__** gtlb_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  E500_TLB_BITMAP ; 
 int E500_TLB_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct kvmppc_vcpu_e500 *vcpu_e500,
				     struct tlbe_ref *ref,
				     int esel)
{
	unsigned int sesel = vcpu_e500->host_tlb1_nv++;

	if (FUNC2(vcpu_e500->host_tlb1_nv >= FUNC1()))
		vcpu_e500->host_tlb1_nv = 0;

	if (vcpu_e500->h2g_tlb1_rmap[sesel]) {
		unsigned int idx = vcpu_e500->h2g_tlb1_rmap[sesel] - 1;
		vcpu_e500->g2h_tlb1_map[idx] &= ~(1ULL << sesel);
	}

	vcpu_e500->gtlb_priv[1][esel].ref.flags |= E500_TLB_BITMAP;
	vcpu_e500->g2h_tlb1_map[esel] |= (u64)1 << sesel;
	vcpu_e500->h2g_tlb1_rmap[sesel] = esel + 1;
	FUNC0(!(ref->flags & E500_TLB_VALID));

	return sesel;
}