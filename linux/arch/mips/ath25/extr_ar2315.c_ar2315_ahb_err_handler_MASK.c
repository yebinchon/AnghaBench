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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR2315_AHB_ERR0 ; 
 int /*<<< orphan*/  AR2315_AHB_ERR1 ; 
 int /*<<< orphan*/  AR2315_AHB_ERROR_DET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int cpl, void *dev_id)
{
	FUNC1(AR2315_AHB_ERR0, AR2315_AHB_ERROR_DET);
	FUNC0(AR2315_AHB_ERR1);

	FUNC3("AHB fatal error\n");
	FUNC2("AHB error"); /* Catastrophic failure */

	return IRQ_HANDLED;
}