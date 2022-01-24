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
 scalar_t__ AR71XX_SPI_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ SPI_REG_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3()
{
	FUNC1("ar71xx_spi: spi_init");

	// Init SPI Hardware, disable remap, set clock
	FUNC2(0x43, FUNC0(AR71XX_SPI_BASE + SPI_REG_CTRL));
	
	FUNC1(" ---> out\n");
}