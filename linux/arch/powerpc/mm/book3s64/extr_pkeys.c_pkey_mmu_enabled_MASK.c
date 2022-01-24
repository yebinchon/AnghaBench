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
 int /*<<< orphan*/  CPU_FTR_PKEY ; 
 int /*<<< orphan*/  FW_FEATURE_LPAR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int pkeys_total ; 

__attribute__((used)) static inline bool FUNC2(void)
{
	if (FUNC1(FW_FEATURE_LPAR))
		return pkeys_total;
	else
		return FUNC0(CPU_FTR_PKEY);
}