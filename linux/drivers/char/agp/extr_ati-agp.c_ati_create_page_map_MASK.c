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
struct ati_page_map {unsigned long* real; unsigned long* remapped; } ;
struct TYPE_2__ {int /*<<< orphan*/  scratch_page; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* agp_bridge ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct ati_page_map *page_map)
{
	int i, err = 0;

	page_map->real = (unsigned long *) FUNC0(GFP_KERNEL);
	if (page_map->real == NULL)
		return -ENOMEM;

	FUNC3((unsigned long)page_map->real, 1);
	err = FUNC1(FUNC4(page_map->real));
	page_map->remapped = page_map->real;

	for (i = 0; i < PAGE_SIZE / sizeof(unsigned long); i++) {
		FUNC5(agp_bridge->scratch_page, page_map->remapped+i);
		FUNC2(page_map->remapped+i);	/* PCI Posting. */
	}

	return 0;
}