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
struct slb_shadow {TYPE_1__* save_area; } ;
typedef  enum slb_index { ____Placeholder_slb_index } slb_index ;
struct TYPE_2__ {int /*<<< orphan*/  esid; int /*<<< orphan*/  vsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct slb_shadow* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(unsigned long ea, int ssize,
				     unsigned long flags,
				     enum slb_index index)
{
	struct slb_shadow *p = FUNC2();

	/*
	 * Clear the ESID first so the entry is not valid while we are
	 * updating it.  No write barriers are needed here, provided
	 * we only update the current CPU's SLB shadow buffer.
	 */
	FUNC0(p->save_area[index].esid, 0);
	FUNC0(p->save_area[index].vsid, FUNC1(FUNC4(ea, ssize, flags)));
	FUNC0(p->save_area[index].esid, FUNC1(FUNC3(ea, ssize, index)));
}