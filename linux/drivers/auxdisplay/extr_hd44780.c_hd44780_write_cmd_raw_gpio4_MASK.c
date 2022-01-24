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
struct hd44780 {scalar_t__* pins; } ;
struct charlcd {struct hd44780* drvdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 size_t PIN_CTRL_RW ; 
 size_t PIN_DATA4 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct hd44780*) ; 
 int* values ; 

__attribute__((used)) static void FUNC3(struct charlcd *lcd, int cmd)
{
	FUNC0(values, 6); /* for DATA[4-7], RS, RW */
	struct hd44780 *hd = lcd->drvdata;
	unsigned int n;

	/* Command nibble + RS, RW */
	values[0] = cmd & 0x0f;
	n = hd->pins[PIN_CTRL_RW] ? 6 : 5;

	/* Present the data to the port */
	FUNC1(n, &hd->pins[PIN_DATA4], NULL, values);

	FUNC2(hd);
}