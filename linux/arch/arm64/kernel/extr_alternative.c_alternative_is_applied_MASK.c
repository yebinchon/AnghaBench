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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ ARM64_NCAPS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  applied_alternatives ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

bool FUNC2(u16 cpufeature)
{
	if (FUNC0(cpufeature >= ARM64_NCAPS))
		return false;

	return FUNC1(cpufeature, applied_alternatives);
}