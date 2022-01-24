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
struct TYPE_2__ {int control1; int control2; scalar_t__ ctr2_enable; scalar_t__ ctr1_enable; } ;

/* Variables and functions */
 int LOONGSON3_PERFCTRL_M ; 
 int LOONGSON3_PERFCTRL_W ; 
 TYPE_1__ reg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(void *args)
{
	/* Start all counters on current CPU */
	reg.control1 |= (LOONGSON3_PERFCTRL_W|LOONGSON3_PERFCTRL_M);
	reg.control2 |= (LOONGSON3_PERFCTRL_W|LOONGSON3_PERFCTRL_M);

	if (reg.ctr1_enable)
		FUNC0(reg.control1);
	if (reg.ctr2_enable)
		FUNC1(reg.control2);
}