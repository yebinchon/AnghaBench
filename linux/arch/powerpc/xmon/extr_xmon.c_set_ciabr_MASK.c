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
 unsigned long CIABR_PRIV ; 
 unsigned long CIABR_PRIV_HYPER ; 
 unsigned long CIABR_PRIV_SUPER ; 
 int /*<<< orphan*/  CPU_FTR_HVMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned long addr)
{
	addr &= ~CIABR_PRIV;

	if (FUNC0(CPU_FTR_HVMODE))
		addr |= CIABR_PRIV_HYPER;
	else
		addr |= CIABR_PRIV_SUPER;
	FUNC1(addr);
}