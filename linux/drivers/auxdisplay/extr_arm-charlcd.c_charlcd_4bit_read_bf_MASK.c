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
struct charlcd {scalar_t__ irq; scalar_t__ virtbase; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 scalar_t__ CHAR_COM ; 
 scalar_t__ CHAR_MASK ; 
 scalar_t__ CHAR_RAW ; 
 int CHAR_RAW_CLEAR ; 
 int HD_BUSY_FLAG ; 
 int FUNC0 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct charlcd *lcd)
{
	if (lcd->irq >= 0) {
		/*
		 * If we'll use IRQs to wait for the busyflag, clear any
		 * pending flag and enable IRQ
		 */
		FUNC3(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
		FUNC1(&lcd->complete);
		FUNC3(0x01, lcd->virtbase + CHAR_MASK);
	}
	FUNC2(lcd->virtbase + CHAR_COM);
	return FUNC0(lcd) & HD_BUSY_FLAG ? true : false;
}