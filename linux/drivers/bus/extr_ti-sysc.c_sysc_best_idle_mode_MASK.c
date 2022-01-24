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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int SYSC_IDLE_FORCE ; 
 int SYSC_IDLE_SMART ; 
 int SYSC_IDLE_SMART_WKUP ; 

__attribute__((used)) static int FUNC1(u32 idlemodes, u32 *best_mode)
{
	if (idlemodes & FUNC0(SYSC_IDLE_SMART_WKUP))
		*best_mode = SYSC_IDLE_SMART_WKUP;
	else if (idlemodes & FUNC0(SYSC_IDLE_SMART))
		*best_mode = SYSC_IDLE_SMART;
	else if (idlemodes & FUNC0(SYSC_IDLE_FORCE))
		*best_mode = SYSC_IDLE_FORCE;
	else
		return -EINVAL;

	return 0;
}