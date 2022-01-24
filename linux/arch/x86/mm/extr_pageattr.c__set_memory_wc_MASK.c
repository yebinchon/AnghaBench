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
 int /*<<< orphan*/  _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  _PAGE_CACHE_MODE_UC_MINUS ; 
 int /*<<< orphan*/  _PAGE_CACHE_MODE_WC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(unsigned long addr, int numpages)
{
	int ret;

	ret = FUNC2(&addr, numpages,
				   FUNC1(_PAGE_CACHE_MODE_UC_MINUS),
				   0);
	if (!ret) {
		ret = FUNC3(&addr, numpages,
					       FUNC1(_PAGE_CACHE_MODE_WC),
					       FUNC0(_PAGE_CACHE_MASK),
					       0, 0, NULL);
	}
	return ret;
}