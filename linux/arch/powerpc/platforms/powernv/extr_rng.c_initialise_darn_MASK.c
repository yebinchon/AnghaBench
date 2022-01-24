#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ (* get_random_seed ) (unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned long*) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long val;
	int i;

	if (!FUNC0(CPU_FTR_ARCH_300))
		return -ENODEV;

	for (i = 0; i < 10; i++) {
		if (FUNC1(&val)) {
			ppc_md.get_random_seed = powernv_get_random_darn;
			return 0;
		}
	}

	FUNC2("Unable to use DARN for get_random_seed()\n");

	return -EIO;
}