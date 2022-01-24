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
struct TYPE_2__ {int bi_busfreq; int /*<<< orphan*/  bi_brgfreq; int /*<<< orphan*/  bi_cpmfreq; int /*<<< orphan*/  bi_intfreq; int /*<<< orphan*/  bi_enet1addr; int /*<<< orphan*/  bi_enetaddr; int /*<<< orphan*/  bi_memsize; int /*<<< orphan*/  bi_memstart; } ;

/* Variables and functions */
 TYPE_1__ bd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	void *node;

	FUNC2(bd.bi_memstart, bd.bi_memsize);
	FUNC1(bd.bi_enetaddr, bd.bi_enet1addr);
	FUNC0(bd.bi_intfreq, bd.bi_busfreq / 4, bd.bi_busfreq);

	node = FUNC3("/soc/cpm");
	if (node)
		FUNC5(node, "clock-frequency", &bd.bi_cpmfreq, 4);

	node = FUNC3("/soc/cpm/brg");
	if (node)
		FUNC5(node, "clock-frequency",  &bd.bi_brgfreq, 4);

	FUNC6();
	FUNC4();
}