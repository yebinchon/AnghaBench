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
 scalar_t__ AR7_REGS_RESET ; 
 scalar_t__ AR7_RESET_SOFTWARE ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(char *command)
{
	u32 *softres_reg = FUNC0(AR7_REGS_RESET + AR7_RESET_SOFTWARE, 1);

	FUNC1(1, softres_reg);
}