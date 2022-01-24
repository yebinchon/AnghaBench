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
typedef  int u8 ;

/* Variables and functions */
 int EBUSY ; 
 int TS5500_ADC_CONV_BUSY ; 
 int /*<<< orphan*/  TS5500_ADC_CONV_BUSY_ADDR ; 
 int /*<<< orphan*/  TS5500_ADC_CONV_DELAY ; 
 int /*<<< orphan*/  TS5500_ADC_CONV_INIT_LSB_ADDR ; 
 int /*<<< orphan*/  TS5500_ADC_CONV_MSB_ADDR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(u8 ctrl)
{
	u8 lsb, msb;

	/* Start conversion (ensure the 3 MSB are set to 0) */
	FUNC1(ctrl & 0x1f, TS5500_ADC_CONV_INIT_LSB_ADDR);

	/*
	 * The platform has CPLD logic driving the A/D converter.
	 * The conversion must complete within 11 microseconds,
	 * otherwise we have to re-initiate a conversion.
	 */
	FUNC2(TS5500_ADC_CONV_DELAY);
	if (FUNC0(TS5500_ADC_CONV_BUSY_ADDR) & TS5500_ADC_CONV_BUSY)
		return -EBUSY;

	/* Read the raw data */
	lsb = FUNC0(TS5500_ADC_CONV_INIT_LSB_ADDR);
	msb = FUNC0(TS5500_ADC_CONV_MSB_ADDR);

	return (msb << 8) | lsb;
}