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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_PSERIES ; 
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned long,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(unsigned long ea, int psize, bool primary, u64 *v,
			  u64 *r)
{
	if (FUNC0(CONFIG_PPC_PSERIES) && FUNC1(FW_FEATURE_LPAR))
		return FUNC3(ea, psize, primary, v, r);

	return FUNC2(ea, psize, primary, v, r);
}