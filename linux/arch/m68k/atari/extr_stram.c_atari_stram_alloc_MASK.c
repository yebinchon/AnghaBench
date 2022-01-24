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
struct resource {char const* name; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *,struct resource*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 struct resource* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  stram_pool ; 

void *FUNC7(unsigned long size, const char *owner)
{
	struct resource *res;
	int error;

	FUNC5("atari_stram_alloc: allocate %lu bytes\n", size);

	/* round up */
	size = FUNC0(size);

	res = FUNC4(sizeof(struct resource), GFP_KERNEL);
	if (!res)
		return NULL;

	res->name = owner;
	error = FUNC1(&stram_pool, res, size, 0, UINT_MAX,
				  PAGE_SIZE, NULL, NULL);
	if (error < 0) {
		FUNC6("atari_stram_alloc: allocate_resource() failed %d!\n",
		       error);
		FUNC3(res);
		return NULL;
	}

	FUNC5("atari_stram_alloc: returning %pR\n", res);
	return FUNC2(res->start);
}