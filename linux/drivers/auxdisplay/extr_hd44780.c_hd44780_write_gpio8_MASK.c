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
typedef  int /*<<< orphan*/  u8 ;
struct hd44780 {scalar_t__* pins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 size_t PIN_CTRL_RW ; 
 size_t PIN_DATA0 ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hd44780*) ; 
 int /*<<< orphan*/ * values ; 

__attribute__((used)) static void FUNC4(struct hd44780 *hd, u8 val, unsigned int rs)
{
	FUNC0(values, 10); /* for DATA[0-7], RS, RW */
	unsigned int n;

	values[0] = val;
	FUNC1(8, values, rs);
	n = hd->pins[PIN_CTRL_RW] ? 10 : 9;

	/* Present the data to the port */
	FUNC2(n, &hd->pins[PIN_DATA0], NULL, values);

	FUNC3(hd);
}