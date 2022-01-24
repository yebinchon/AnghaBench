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
 int /*<<< orphan*/  CONFIG_PPC_BOOK3S_601 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SZ_256M ; 
 unsigned int SZ_8M ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 unsigned int FUNC3 (unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC4(unsigned long base, unsigned long top)
{
	unsigned int max_size = FUNC0(CONFIG_PPC_BOOK3S_601) ? SZ_8M : SZ_256M;
	unsigned int base_shift = (FUNC1(base) - 1) & 31;
	unsigned int block_shift = (FUNC2(top - base) - 1) & 31;

	return FUNC3(max_size, 1U << base_shift, 1U << block_shift);
}