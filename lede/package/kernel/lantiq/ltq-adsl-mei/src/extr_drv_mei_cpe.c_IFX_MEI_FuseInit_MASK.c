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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  DSL_DEV_Device_t ;

/* Variables and functions */
 scalar_t__ ADSL_DILV_BASE ; 
 scalar_t__ BRAM_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ IRAM0_BASE ; 
 scalar_t__ IRAM1_BASE ; 

__attribute__((used)) static void
FUNC1 (DSL_DEV_Device_t * pDev)
{
	u32 data = 0;
	FUNC0 (pDev, IRAM0_BASE, &data, 1);
	FUNC0 (pDev, IRAM0_BASE + 4, &data, 1);
	FUNC0 (pDev, IRAM1_BASE, &data, 1);
	FUNC0 (pDev, IRAM1_BASE + 4, &data, 1);
	FUNC0 (pDev, BRAM_BASE, &data, 1);
	FUNC0 (pDev, BRAM_BASE + 4, &data, 1);
	FUNC0 (pDev, ADSL_DILV_BASE, &data, 1);
	FUNC0 (pDev, ADSL_DILV_BASE + 4, &data, 1);
}