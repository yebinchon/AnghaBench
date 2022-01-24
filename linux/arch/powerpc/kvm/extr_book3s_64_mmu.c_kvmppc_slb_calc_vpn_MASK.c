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
typedef  int gva_t ;

/* Variables and functions */
 int VPN_SHIFT ; 
 int FUNC0 (struct kvmppc_slb*) ; 
 int FUNC1 (struct kvmppc_slb*) ; 

__attribute__((used)) static u64 FUNC2(struct kvmppc_slb *slb, gva_t eaddr)
{
	eaddr &= FUNC0(slb);

	return (eaddr >> VPN_SHIFT) |
		((slb->vsid) << (FUNC1(slb) - VPN_SHIFT));
}