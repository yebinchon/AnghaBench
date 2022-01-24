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
typedef  unsigned long uint64_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (void*,int) ; 
 int FUNC1 (void*,int,unsigned long*,unsigned long*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void *fdt, unsigned long start, unsigned long size)
{
	int i, ret, num_rsvs = FUNC2(fdt);

	for (i = 0; i < num_rsvs; i++) {
		uint64_t rsv_start, rsv_size;

		ret = FUNC1(fdt, i, &rsv_start, &rsv_size);
		if (ret) {
			FUNC3("Malformed device tree.\n");
			return -EINVAL;
		}

		if (rsv_start == start && rsv_size == size) {
			ret = FUNC0(fdt, i);
			if (ret) {
				FUNC3("Error deleting device tree reservation.\n");
				return -EINVAL;
			}

			return 0;
		}
	}

	return -ENOENT;
}