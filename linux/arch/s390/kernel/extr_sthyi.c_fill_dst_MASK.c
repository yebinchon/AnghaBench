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
typedef  scalar_t__ u64 ;
struct sthyi_sctns {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sthyi_sctns*) ; 
 int /*<<< orphan*/  FUNC1 (struct sthyi_sctns*) ; 
 int /*<<< orphan*/  FUNC2 (struct sthyi_sctns*) ; 
 int FUNC3 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *dst, u64 *rc)
{
	struct sthyi_sctns *sctns = (struct sthyi_sctns *)dst;

	/*
	 * If the facility is on, we don't want to emulate the instruction.
	 * We ask the hypervisor to provide the data.
	 */
	if (FUNC4(74))
		return FUNC3((u64)dst, rc);

	FUNC1(sctns);
	FUNC2(sctns);
	FUNC0(sctns);
	*rc = 0;
	return 0;
}