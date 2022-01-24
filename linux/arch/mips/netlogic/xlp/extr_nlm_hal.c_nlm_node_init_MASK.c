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
struct nlm_soc_info {int coremask; int ebase; int /*<<< orphan*/  piclock; scalar_t__ socbus; int /*<<< orphan*/  picbase; int /*<<< orphan*/  sysbase; } ;

/* Variables and functions */
 int MIPS_EBASE_BASE ; 
 scalar_t__ FUNC0 () ; 
 struct nlm_soc_info* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(int node)
{
	struct nlm_soc_info *nodep;

	nodep = FUNC1(node);
	if (node == 0)
		nodep->coremask = 1;	/* node 0, boot cpu */
	nodep->sysbase = FUNC3(node);
	nodep->picbase = FUNC2(node);
	nodep->ebase = FUNC4() & MIPS_EBASE_BASE;
	if (FUNC0())
		nodep->socbus = FUNC6(node);
	else
		nodep->socbus = 0;
	FUNC5(&nodep->piclock);
}