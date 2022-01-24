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
struct gmap {int removed; int asce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _ASCE_ORIGIN ; 
 int _ASCE_TYPE_MASK ; 
#define  _ASCE_TYPE_REGION1 131 
#define  _ASCE_TYPE_REGION2 130 
#define  _ASCE_TYPE_REGION3 129 
#define  _ASCE_TYPE_SEGMENT 128 
 int /*<<< orphan*/  FUNC1 (struct gmap*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct gmap*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct gmap*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct gmap*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (struct gmap*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct gmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct gmap*) ; 

__attribute__((used)) static void FUNC8(struct gmap *sg)
{
	unsigned long *table;

	FUNC0(!FUNC7(sg));
	if (sg->removed)
		return;
	sg->removed = 1;
	FUNC5(sg, 0, -1UL);
	FUNC6(sg);
	table = (unsigned long *)(sg->asce & _ASCE_ORIGIN);
	switch (sg->asce & _ASCE_TYPE_MASK) {
	case _ASCE_TYPE_REGION1:
		FUNC1(sg, 0, table);
		break;
	case _ASCE_TYPE_REGION2:
		FUNC2(sg, 0, table);
		break;
	case _ASCE_TYPE_REGION3:
		FUNC3(sg, 0, table);
		break;
	case _ASCE_TYPE_SEGMENT:
		FUNC4(sg, 0, table);
		break;
	}
}