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
struct agp_memory {scalar_t__ key; int num_scratch_pages; int /*<<< orphan*/  type; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_NORMAL_MEMORY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct agp_memory*) ; 
 struct agp_memory* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct agp_memory *FUNC5(int scratch_pages)
{
	struct agp_memory *new;

	new = FUNC4(sizeof(struct agp_memory), GFP_KERNEL);
	if (new == NULL)
		return NULL;

	new->key = FUNC2();

	if (new->key < 0) {
		FUNC3(new);
		return NULL;
	}

	FUNC0(PAGE_SIZE * scratch_pages, new);

	if (new->pages == NULL) {
		FUNC1(new->key);
		FUNC3(new);
		return NULL;
	}
	new->num_scratch_pages = scratch_pages;
	new->type = AGP_NORMAL_MEMORY;
	return new;
}