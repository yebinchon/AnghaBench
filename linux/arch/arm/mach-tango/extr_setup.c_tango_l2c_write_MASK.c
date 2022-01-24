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
 unsigned int L2X0_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 

__attribute__((used)) static void FUNC1(unsigned long val, unsigned int reg)
{
	if (reg == L2X0_CTRL)
		FUNC0(val);
}