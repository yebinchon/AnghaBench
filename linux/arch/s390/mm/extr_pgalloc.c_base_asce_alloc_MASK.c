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

/* Variables and functions */
 unsigned long PAGE_SIZE ; 
 unsigned long _ASCE_TABLE_LENGTH ; 
 unsigned long _ASCE_TYPE_REGION1 ; 
 unsigned long _ASCE_TYPE_REGION2 ; 
 unsigned long _ASCE_TYPE_REGION3 ; 
 unsigned long _ASCE_TYPE_SEGMENT ; 
 int /*<<< orphan*/  _REGION1_ENTRY_EMPTY ; 
 unsigned long _REGION1_SIZE ; 
 int /*<<< orphan*/  _REGION2_ENTRY_EMPTY ; 
 unsigned long _REGION2_SIZE ; 
 int /*<<< orphan*/  _REGION3_ENTRY_EMPTY ; 
 unsigned long _REGION3_SIZE ; 
 int /*<<< orphan*/  _SEGMENT_ENTRY_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (unsigned long,unsigned long,unsigned long,int) ; 
 int FUNC4 (unsigned long,unsigned long,unsigned long,int) ; 
 int FUNC5 (unsigned long,unsigned long,unsigned long,int) ; 
 int FUNC6 (unsigned long,unsigned long,unsigned long,int) ; 

unsigned long FUNC7(unsigned long addr, unsigned long num_pages)
{
	unsigned long asce, table, end;
	int rc;

	if (FUNC2())
		return 0;
	end = addr + num_pages * PAGE_SIZE;
	if (end <= _REGION3_SIZE) {
		table = FUNC1(_SEGMENT_ENTRY_EMPTY);
		if (!table)
			return 0;
		rc = FUNC6(table, addr, end, 1);
		asce = table | _ASCE_TYPE_SEGMENT | _ASCE_TABLE_LENGTH;
	} else if (end <= _REGION2_SIZE) {
		table = FUNC1(_REGION3_ENTRY_EMPTY);
		if (!table)
			return 0;
		rc = FUNC5(table, addr, end, 1);
		asce = table | _ASCE_TYPE_REGION3 | _ASCE_TABLE_LENGTH;
	} else if (end <= _REGION1_SIZE) {
		table = FUNC1(_REGION2_ENTRY_EMPTY);
		if (!table)
			return 0;
		rc = FUNC4(table, addr, end, 1);
		asce = table | _ASCE_TYPE_REGION2 | _ASCE_TABLE_LENGTH;
	} else {
		table = FUNC1(_REGION1_ENTRY_EMPTY);
		if (!table)
			return 0;
		rc = FUNC3(table, addr, end, 1);
		asce = table | _ASCE_TYPE_REGION1 | _ASCE_TABLE_LENGTH;
	}
	if (rc) {
		FUNC0(asce);
		asce = 0;
	}
	return asce;
}