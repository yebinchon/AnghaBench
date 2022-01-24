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
typedef  int /*<<< orphan*/  busfreq ;
struct TYPE_2__ {int bi_busfreq; int bi_intfreq; int /*<<< orphan*/  bi_enet3addr; int /*<<< orphan*/  bi_enet2addr; int /*<<< orphan*/  bi_enet1addr; int /*<<< orphan*/  bi_enetaddr; int /*<<< orphan*/  bi_memsize; int /*<<< orphan*/  bi_memstart; } ;

/* Variables and functions */
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,unsigned long*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	void *devp;
	unsigned long busfreq = bd.bi_busfreq * 1000000;

	FUNC0(bd.bi_intfreq * 1000000, busfreq / 4, busfreq);

	devp = FUNC3("/soc@f1000000");
	if (devp)
		FUNC4(devp, "bus-frequency", &busfreq, sizeof(busfreq));

	devp = FUNC3("/soc/serial@4500");
	if (devp)
		FUNC4(devp, "clock-frequency", &busfreq, sizeof(busfreq));

	FUNC2(bd.bi_memstart, bd.bi_memsize);

	FUNC1("ethernet0", bd.bi_enetaddr);
	FUNC1("ethernet1", bd.bi_enet1addr);
	FUNC1("ethernet2", bd.bi_enet2addr);
	FUNC1("ethernet3", bd.bi_enet3addr);
}