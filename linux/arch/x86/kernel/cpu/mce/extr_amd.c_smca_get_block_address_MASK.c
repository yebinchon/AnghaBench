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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  smca_misc_banks_map ; 

__attribute__((used)) static u32 FUNC4(unsigned int bank, unsigned int block,
				  unsigned int cpu)
{
	if (!block)
		return FUNC1(bank);

	if (!(FUNC3(smca_misc_banks_map, cpu) & FUNC0(bank)))
		return 0;

	return FUNC2(bank, block - 1);
}