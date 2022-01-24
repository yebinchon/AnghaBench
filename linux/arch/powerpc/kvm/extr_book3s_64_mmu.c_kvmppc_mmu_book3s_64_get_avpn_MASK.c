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
struct kvmppc_slb {int vsid; } ;
typedef  int /*<<< orphan*/  gva_t ;

/* Variables and functions */
 int FUNC0 (struct kvmppc_slb*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvmppc_slb*) ; 
 int FUNC2 (struct kvmppc_slb*) ; 

__attribute__((used)) static u64 FUNC3(struct kvmppc_slb *slbe, gva_t eaddr)
{
	int p = FUNC1(slbe);
	u64 avpn;

	avpn = FUNC0(slbe, eaddr);
	avpn |= slbe->vsid << (FUNC2(slbe) - p);

	if (p < 16)
		avpn >>= ((80 - p) - 56) - 8;	/* 16 - p */
	else
		avpn <<= p - 16;

	return avpn;
}