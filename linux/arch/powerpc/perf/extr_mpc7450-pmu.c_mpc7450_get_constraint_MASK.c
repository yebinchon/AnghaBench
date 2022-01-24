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
typedef  scalar_t__ u64 ;
typedef  int u32 ;

/* Variables and functions */
 unsigned int PM_PMC_MSK ; 
 unsigned int PM_PMC_SH ; 
 unsigned int PM_THRESH_MSK ; 
 unsigned int PM_THRESH_SH ; 
 unsigned int PM_THRMULT_MSKS ; 
 int** classbits ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int** pmcbits ; 

__attribute__((used)) static int FUNC2(u64 event, unsigned long *maskp,
				  unsigned long *valp)
{
	int pmc, class;
	u32 mask, value;
	int thresh, tuse;

	class = FUNC0(event);
	if (class < 0)
		return -1;
	if (class == 4) {
		pmc = ((unsigned int)event >> PM_PMC_SH) & PM_PMC_MSK;
		mask  = pmcbits[pmc - 1][0];
		value = pmcbits[pmc - 1][1];
	} else {
		mask  = classbits[class][0];
		value = classbits[class][1];
	}

	tuse = FUNC1(event);
	if (tuse) {
		thresh = ((unsigned int)event >> PM_THRESH_SH) & PM_THRESH_MSK;
		mask  |= 0x3f << 24;
		value |= thresh << 24;
		if (tuse == 2) {
			mask |= 0x40000000;
			if ((unsigned int)event & PM_THRMULT_MSKS)
				value |= 0x40000000;
		}
	}

	*maskp = mask;
	*valp = value;
	return 0;
}