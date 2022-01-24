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
struct resource {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct resource*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  chipavail ; 
 int /*<<< orphan*/  chipram_res ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

void *FUNC6(unsigned long size, struct resource *res)
{
	int error;

	/* round up */
	size = FUNC0(size);

	FUNC4("amiga_chip_alloc_res: allocate %lu bytes\n", size);
	error = FUNC2(&chipram_res, res, size, 0, UINT_MAX,
				  PAGE_SIZE, NULL, NULL);
	if (error < 0) {
		FUNC5("amiga_chip_alloc_res: allocate_resource() failed %d!\n",
		       error);
		return NULL;
	}

	FUNC3(size, &chipavail);
	FUNC4("amiga_chip_alloc_res: returning %pR\n", res);
	return FUNC1(res->start);
}