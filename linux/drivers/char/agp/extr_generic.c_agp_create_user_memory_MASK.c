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
struct page {int dummy; } ;
struct agp_memory {scalar_t__ key; scalar_t__ num_scratch_pages; int /*<<< orphan*/ * pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,struct agp_memory*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct agp_memory*) ; 
 struct agp_memory* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct agp_memory *FUNC5(unsigned long num_agp_pages)
{
	struct agp_memory *new;
	unsigned long alloc_size = num_agp_pages*sizeof(struct page *);

	if (INT_MAX/sizeof(struct page *) < num_agp_pages)
		return NULL;

	new = FUNC4(sizeof(struct agp_memory), GFP_KERNEL);
	if (new == NULL)
		return NULL;

	new->key = FUNC2();

	if (new->key < 0) {
		FUNC3(new);
		return NULL;
	}

	FUNC0(alloc_size, new);

	if (new->pages == NULL) {
		FUNC1(new->key);
		FUNC3(new);
		return NULL;
	}
	new->num_scratch_pages = 0;
	return new;
}