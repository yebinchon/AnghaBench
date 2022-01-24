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
 int /*<<< orphan*/  C0_ENTRYLO0 ; 
 int /*<<< orphan*/  C0_EPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC5(u32 **p, unsigned int pte, unsigned int tmp)
{
	FUNC2(p, pte, C0_ENTRYLO0); /* cp0 delay */
	FUNC1(p, tmp, C0_EPC); /* cp0 delay */
	FUNC4(p);
	FUNC0(p, tmp);
	FUNC3(p); /* branch delay */
}