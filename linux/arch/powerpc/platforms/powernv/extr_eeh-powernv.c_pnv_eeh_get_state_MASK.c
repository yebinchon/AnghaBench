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
struct eeh_pe {int type; } ;

/* Variables and functions */
 int EEH_PE_PHB ; 
 int EEH_STATE_UNAVAILABLE ; 
 int FUNC0 (struct eeh_pe*) ; 
 int FUNC1 (struct eeh_pe*) ; 

__attribute__((used)) static int FUNC2(struct eeh_pe *pe, int *delay)
{
	int ret;

	if (pe->type & EEH_PE_PHB)
		ret = FUNC1(pe);
	else
		ret = FUNC0(pe);

	if (!delay)
		return ret;

	/*
	 * If the PE state is temporarily unavailable,
	 * to inform the EEH core delay for default
	 * period (1 second)
	 */
	*delay = 0;
	if (ret & EEH_STATE_UNAVAILABLE)
		*delay = 1000;

	return ret;
}