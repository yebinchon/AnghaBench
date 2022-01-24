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
struct hd44780 {int /*<<< orphan*/ * pins; } ;

/* Variables and functions */
 size_t PIN_CTRL_E ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct hd44780 *hd)
{
	/* Maintain the data during 20 us before the strobe */
	FUNC1(20);

	FUNC0(hd->pins[PIN_CTRL_E], 1);

	/* Maintain the strobe during 40 us */
	FUNC1(40);

	FUNC0(hd->pins[PIN_CTRL_E], 0);
}