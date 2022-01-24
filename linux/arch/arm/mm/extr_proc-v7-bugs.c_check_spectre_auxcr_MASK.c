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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HARDEN_BRANCH_PREDICTOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC2(bool *warned, u32 bit)
{
	return FUNC0(CONFIG_HARDEN_BRANCH_PREDICTOR) &&
		FUNC1(warned, bit,
				       "Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable\n");
}