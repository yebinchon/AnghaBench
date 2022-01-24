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
struct TYPE_2__ {unsigned long vxres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__ lcd_dma ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(unsigned long vxres)
{
	if (FUNC1()) {
		FUNC2("DMA virtual resolution is not supported in 1510 mode\n");
		FUNC0();
	}
	lcd_dma.vxres = vxres;
}