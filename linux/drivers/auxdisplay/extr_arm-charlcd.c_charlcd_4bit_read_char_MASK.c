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
typedef  int u32 ;
struct charlcd {scalar_t__ irq; scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ CHAR_RAW ; 
 int /*<<< orphan*/  CHAR_RAW_CLEAR ; 
 int CHAR_RAW_VALID ; 
 scalar_t__ CHAR_RD ; 
 int /*<<< orphan*/  FUNC0 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u8 FUNC5(struct charlcd *lcd)
{
	u8 data;
	u32 val;
	int i;

	/* If we can, use an IRQ to wait for the data, else poll */
	if (lcd->irq >= 0)
		FUNC0(lcd);
	else {
		i = 0;
		val = 0;
		while (!(val & CHAR_RAW_VALID) && i < 10) {
			FUNC3(100);
			val = FUNC2(lcd->virtbase + CHAR_RAW);
			i++;
		}

		FUNC4(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
	}
	FUNC1(1);

	/* Read the 4 high bits of the data */
	data = FUNC2(lcd->virtbase + CHAR_RD) & 0xf0;

	/*
	 * The second read for the low bits does not trigger an IRQ
	 * so in this case we have to poll for the 4 lower bits
	 */
	i = 0;
	val = 0;
	while (!(val & CHAR_RAW_VALID) && i < 10) {
		FUNC3(100);
		val = FUNC2(lcd->virtbase + CHAR_RAW);
		i++;
	}
	FUNC4(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
	FUNC1(1);

	/* Read the 4 low bits of the data */
	data |= (FUNC2(lcd->virtbase + CHAR_RD) >> 4) & 0x0f;

	return data;
}