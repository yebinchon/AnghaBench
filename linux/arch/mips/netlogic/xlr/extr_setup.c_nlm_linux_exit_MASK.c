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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_SWRESET_REG ; 
 int /*<<< orphan*/  NETLOGIC_IO_GPIO_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	uint64_t gpiobase;

	gpiobase = FUNC1(NETLOGIC_IO_GPIO_OFFSET);
	/* trigger a chip reset by writing 1 to GPIO_SWRESET_REG */
	FUNC2(gpiobase, GPIO_SWRESET_REG, 1);
	for ( ; ; )
		FUNC0();
}