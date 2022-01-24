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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {void* patb1; void* patb0; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pseries_partition_tb ; 

void FUNC4(unsigned int lpid, u64 dw0, u64 dw1)
{
	if (!FUNC2()) {
		FUNC3(lpid, dw0, dw1, true);
		return;
	}

	pseries_partition_tb[lpid].patb0 = FUNC0(dw0);
	pseries_partition_tb[lpid].patb1 = FUNC0(dw1);
	/* L0 will do the necessary barriers */
	FUNC1(lpid);
}