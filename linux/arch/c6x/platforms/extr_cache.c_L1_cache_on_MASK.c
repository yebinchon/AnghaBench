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
 int /*<<< orphan*/  IMCR_L1DCFG ; 
 int /*<<< orphan*/  IMCR_L1PCFG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(void)
{
	unsigned int dummy;

	FUNC1(IMCR_L1PCFG, 7);
	dummy = FUNC0(IMCR_L1PCFG);

	FUNC1(IMCR_L1DCFG, 7);
	dummy = FUNC0(IMCR_L1DCFG);
}