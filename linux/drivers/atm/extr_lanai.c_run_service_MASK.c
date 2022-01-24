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
typedef  int u32 ;
struct TYPE_2__ {int* start; int const* ptr; int const* end; } ;
struct lanai_dev {int /*<<< orphan*/  transmit_ready; TYPE_1__ service; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_VCI ; 
 int /*<<< orphan*/  ServRead_Reg ; 
 int /*<<< orphan*/  ServWrite_Reg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct lanai_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iter_transmit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct lanai_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lanai_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vcc_sklist_lock ; 
 int /*<<< orphan*/  FUNC7 (struct lanai_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct lanai_dev *lanai)
{
	int ntx = 0;
	u32 wreg = FUNC5(lanai, ServWrite_Reg);
	const u32 *end = lanai->service.start + wreg;
	while (lanai->service.ptr != end) {
		ntx += FUNC1(lanai,
		    FUNC2(lanai->service.ptr++));
		if (lanai->service.ptr >= lanai->service.end)
			lanai->service.ptr = lanai->service.start;
	}
	FUNC6(lanai, wreg, ServRead_Reg);
	if (ntx != 0) {
		FUNC3(&vcc_sklist_lock);
		FUNC7(lanai, lanai->transmit_ready,
		    iter_transmit);
		FUNC0(lanai->transmit_ready, NUM_VCI);
		FUNC4(&vcc_sklist_lock);
	}
}