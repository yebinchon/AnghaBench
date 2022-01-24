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
typedef  int u64 ;
struct kvmppc_pte {int vpage; } ;
struct kvm_vcpu {int dummy; } ;
typedef  int gva_t ;

/* Variables and functions */
 int SID_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ; 

__attribute__((used)) static u64 FUNC2(struct kvm_vcpu *vcpu, gva_t eaddr,
					 bool data)
{
	u64 vsid;
	struct kvmppc_pte pte;

	if (!FUNC1(vcpu, eaddr, &pte, data, false))
		return pte.vpage;

	FUNC0(vcpu, eaddr >> SID_SHIFT, &vsid);
	return (((u64)eaddr >> 12) & 0xffff) | (vsid << 16);
}