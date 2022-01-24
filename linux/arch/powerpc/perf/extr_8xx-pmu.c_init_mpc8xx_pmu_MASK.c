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
 int /*<<< orphan*/  PERF_TYPE_RAW ; 
 int /*<<< orphan*/  SPRN_CMPA ; 
 int /*<<< orphan*/  SPRN_COUNTA ; 
 int /*<<< orphan*/  SPRN_ICTRL ; 
 int /*<<< orphan*/  mpc8xx_pmu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void)
{
	FUNC0(SPRN_ICTRL, 7);
	FUNC0(SPRN_CMPA, 0);
	FUNC0(SPRN_COUNTA, 0xffff);

	return FUNC1(&mpc8xx_pmu, "cpu", PERF_TYPE_RAW);
}