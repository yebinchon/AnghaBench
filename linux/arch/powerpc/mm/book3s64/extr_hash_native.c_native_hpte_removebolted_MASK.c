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
struct hash_pte {scalar_t__ v; } ;

/* Variables and functions */
 int ENOENT ; 
 int HPTE_V_BOLTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,int) ; 
 struct hash_pte* htab_address ; 
 long FUNC4 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned long ea, int psize, int ssize)
{
	unsigned long vpn;
	unsigned long vsid;
	long slot;
	struct hash_pte *hptep;

	vsid = FUNC2(ea, ssize);
	vpn = FUNC3(ea, vsid, ssize);

	slot = FUNC4(vpn, psize, ssize);
	if (slot == -1)
		return -ENOENT;

	hptep = htab_address + slot;

	FUNC0(!(FUNC1(hptep->v) & HPTE_V_BOLTED));

	/* Invalidate the hpte */
	hptep->v = 0;

	/* Invalidate the TLB */
	FUNC5(vpn, psize, psize, ssize, 0);
	return 0;
}