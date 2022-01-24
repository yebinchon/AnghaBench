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
struct mce {int addr; int mcgstatus; } ;

/* Variables and functions */
 int MCG_STATUS_RIPV ; 
 int MF_ACTION_REQUIRED ; 
 int MF_MUST_KILL ; 
 int PAGE_SHIFT ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct mce *m)
{
	int flags = MF_ACTION_REQUIRED;
	int ret;

	FUNC1("Uncorrected hardware memory error in user-access at %llx", m->addr);
	if (!(m->mcgstatus & MCG_STATUS_RIPV))
		flags |= MF_MUST_KILL;
	ret = FUNC0(m->addr >> PAGE_SHIFT, flags);
	if (ret)
		FUNC1("Memory error not recovered");
	else
		FUNC2(m->addr >> PAGE_SHIFT);
	return ret;
}