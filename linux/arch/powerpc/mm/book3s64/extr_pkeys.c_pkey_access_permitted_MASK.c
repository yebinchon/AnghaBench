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
typedef  int u64 ;

/* Variables and functions */
 int AMR_RD_BIT ; 
 int AMR_WR_BIT ; 
 int IAMR_EX_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static bool FUNC4(int pkey, bool write, bool execute)
{
	int pkey_shift;
	u64 amr;

	if (!FUNC0(pkey))
		return true;

	pkey_shift = FUNC1(pkey);
	if (execute && !(FUNC3() & (IAMR_EX_BIT << pkey_shift)))
		return true;

	amr = FUNC2(); /* Delay reading amr until absolutely needed */
	return ((!write && !(amr & (AMR_RD_BIT << pkey_shift))) ||
		(write &&  !(amr & (AMR_WR_BIT << pkey_shift))));
}