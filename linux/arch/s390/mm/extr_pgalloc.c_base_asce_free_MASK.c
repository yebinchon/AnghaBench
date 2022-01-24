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
 unsigned long _ASCE_ORIGIN ; 
 unsigned long _ASCE_TYPE_MASK ; 
#define  _ASCE_TYPE_REGION1 131 
#define  _ASCE_TYPE_REGION2 130 
#define  _ASCE_TYPE_REGION3 129 
#define  _ASCE_TYPE_SEGMENT 128 
 int /*<<< orphan*/  _PAGE_SIZE ; 
 int /*<<< orphan*/  _REGION1_SIZE ; 
 int /*<<< orphan*/  _REGION2_SIZE ; 
 int /*<<< orphan*/  _REGION3_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned long asce)
{
	unsigned long table = asce & _ASCE_ORIGIN;

	if (!asce)
		return;
	switch (asce & _ASCE_TYPE_MASK) {
	case _ASCE_TYPE_SEGMENT:
		FUNC4(table, 0, _REGION3_SIZE, 0);
		break;
	case _ASCE_TYPE_REGION3:
		FUNC3(table, 0, _REGION2_SIZE, 0);
		break;
	case _ASCE_TYPE_REGION2:
		FUNC2(table, 0, _REGION1_SIZE, 0);
		break;
	case _ASCE_TYPE_REGION1:
		FUNC1(table, 0, -_PAGE_SIZE, 0);
		break;
	}
	FUNC0(table);
}