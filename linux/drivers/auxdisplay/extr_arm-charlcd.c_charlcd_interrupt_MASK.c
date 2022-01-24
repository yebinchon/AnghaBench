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
struct charlcd {int /*<<< orphan*/  dev; int /*<<< orphan*/  complete; scalar_t__ virtbase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ CHAR_RAW ; 
 int /*<<< orphan*/  CHAR_RAW_CLEAR ; 
 scalar_t__ CHAR_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct charlcd *lcd = data;
	u8 status;

	status = FUNC2(lcd->virtbase + CHAR_STAT) & 0x01;
	/* Clear IRQ */
	FUNC3(CHAR_RAW_CLEAR, lcd->virtbase + CHAR_RAW);
	if (status)
		FUNC0(&lcd->complete);
	else
		FUNC1(lcd->dev, "Spurious IRQ (%02x)\n", status);
	return IRQ_HANDLED;
}