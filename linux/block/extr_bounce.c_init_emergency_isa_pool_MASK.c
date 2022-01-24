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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ISA_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  isa_mutex ; 
 int /*<<< orphan*/  isa_page_pool ; 
 int /*<<< orphan*/  mempool_alloc_pages_isa ; 
 int /*<<< orphan*/  mempool_free_pages ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(void)
{
	int ret;

	FUNC4(&isa_mutex);

	if (FUNC3(&isa_page_pool)) {
		FUNC5(&isa_mutex);
		return 0;
	}

	ret = FUNC2(&isa_page_pool, ISA_POOL_SIZE, mempool_alloc_pages_isa,
			   mempool_free_pages, (void *) 0);
	FUNC0(ret);

	FUNC6("isa pool size: %d pages\n", ISA_POOL_SIZE);
	FUNC1();
	FUNC5(&isa_mutex);
	return 0;
}