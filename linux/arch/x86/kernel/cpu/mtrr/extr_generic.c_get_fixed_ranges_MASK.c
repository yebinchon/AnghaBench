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
typedef  int /*<<< orphan*/  mtrr_type ;

/* Variables and functions */
 scalar_t__ MSR_MTRRfix16K_80000 ; 
 scalar_t__ MSR_MTRRfix4K_C0000 ; 
 scalar_t__ MSR_MTRRfix64K_00000 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(mtrr_type *frs)
{
	unsigned int *p = (unsigned int *)frs;
	int i;

	FUNC0();

	FUNC1(MSR_MTRRfix64K_00000, p[0], p[1]);

	for (i = 0; i < 2; i++)
		FUNC1(MSR_MTRRfix16K_80000 + i, p[2 + i * 2], p[3 + i * 2]);
	for (i = 0; i < 8; i++)
		FUNC1(MSR_MTRRfix4K_C0000 + i, p[6 + i * 2], p[7 + i * 2]);
}