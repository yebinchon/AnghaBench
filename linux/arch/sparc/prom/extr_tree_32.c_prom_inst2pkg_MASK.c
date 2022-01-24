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
typedef  int s32 ;
typedef  scalar_t__ phandle ;
struct TYPE_3__ {scalar_t__ (* v2_inst2pkg ) (int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;

/* Variables and functions */
 int /*<<< orphan*/  prom_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

phandle FUNC4(int inst)
{
	phandle node;
	unsigned long flags;
	
	FUNC1(&prom_lock, flags);
	node = (*romvec->pv_v2devops.v2_inst2pkg)(inst);
	FUNC0();
	FUNC2(&prom_lock, flags);
	if ((s32)node == -1)
		return 0;
	return node;
}