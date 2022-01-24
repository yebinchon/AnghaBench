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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_32BIT ; 
 int /*<<< orphan*/  CONFIG_64BIT ; 
 int /*<<< orphan*/  CONFIG_MIPS32_O32 ; 
 int /*<<< orphan*/  CONFIG_MIPS_O32_FP64_SUPPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIF_32BIT_FPREGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct pt_regs *xcp)
{
	if (FUNC0(CONFIG_64BIT) && !FUNC0(CONFIG_MIPS32_O32))
		return 1;
	else if (FUNC0(CONFIG_32BIT) &&
		 !FUNC0(CONFIG_MIPS_O32_FP64_SUPPORT))
		return 0;

	return !FUNC1(TIF_32BIT_FPREGS);
}