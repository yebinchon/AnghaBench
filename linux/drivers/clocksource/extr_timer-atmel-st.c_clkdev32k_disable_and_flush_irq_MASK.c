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
 int AT91_ST_ALMS ; 
 int /*<<< orphan*/  AT91_ST_IDR ; 
 int AT91_ST_PITS ; 
 int /*<<< orphan*/  AT91_ST_SR ; 
 int /*<<< orphan*/  last_crtr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  regmap_st ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned int val;

	/* Disable and flush pending timer interrupts */
	FUNC2(regmap_st, AT91_ST_IDR, AT91_ST_PITS | AT91_ST_ALMS);
	FUNC1(regmap_st, AT91_ST_SR, &val);
	last_crtr = FUNC0();
}