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
 int /*<<< orphan*/  SYSCFGID ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC1(void)
{
	/* Bits 18..21 of SYSCFGID contain the core count minus 1. */
	unsigned int syscfgid = FUNC0(SYSCFGID);
	return ((syscfgid >> 18) & 0xf) + 1;
}