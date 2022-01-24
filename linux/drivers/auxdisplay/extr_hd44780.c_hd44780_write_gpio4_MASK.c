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
struct hd44780 {scalar_t__* pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 size_t PIN_CTRL_RW ; 
 size_t PIN_DATA4 ; 
 int /*<<< orphan*/  FUNC1 (int,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct hd44780*) ; 
 int* values ; 

__attribute__((used)) static void FUNC4(struct hd44780 *hd, u8 val, unsigned int rs)
{
	FUNC0(values, 6); /* for DATA[4-7], RS, RW */
	unsigned int n;

	/* High nibble + RS, RW */
	values[0] = val >> 4;
	FUNC1(4, values, rs);
	n = hd->pins[PIN_CTRL_RW] ? 6 : 5;

	/* Present the data to the port */
	FUNC2(n, &hd->pins[PIN_DATA4], NULL, values);

	FUNC3(hd);

	/* Low nibble */
	values[0] &= ~0x0fUL;
	values[0] |= val & 0x0f;

	/* Present the data to the port */
	FUNC2(n, &hd->pins[PIN_DATA4], NULL, values);

	FUNC3(hd);
}