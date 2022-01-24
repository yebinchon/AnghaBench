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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fpsimd_context_busy ; 

__attribute__((used)) static void FUNC2(void)
{
	bool busy = FUNC1(fpsimd_context_busy, false);

	FUNC0(!busy); /* No matching get_cpu_fpsimd_context()? */
}