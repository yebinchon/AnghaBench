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
typedef  unsigned long u64 ;

/* Variables and functions */
 int /*<<< orphan*/  PS3_LPAR_VAS_ID_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long ppc64_pft_size ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long hpte_count = (1UL << ppc64_pft_size) >> 4;
	u64 i;

	for (i = 0; i < hpte_count; i++)
		FUNC0(PS3_LPAR_VAS_ID_CURRENT, i, 0, 0);

	FUNC1();
	FUNC2();
}