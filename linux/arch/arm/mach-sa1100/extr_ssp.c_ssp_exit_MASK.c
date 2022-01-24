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
 int /*<<< orphan*/  IRQ_Ser4SSP ; 
 int /*<<< orphan*/  SSCR0_SSE ; 
 int /*<<< orphan*/  Ser4SSCR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(void)
{
	Ser4SSCR0 &= ~SSCR0_SSE;

	FUNC1(IRQ_Ser4SSP, NULL);
	FUNC2(FUNC0(Ser4SSCR0), 0x18);
}