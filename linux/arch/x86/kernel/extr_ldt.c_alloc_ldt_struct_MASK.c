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
struct ldt_struct {int slot; unsigned int nr_entries; void* entries; } ;
struct desc_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int LDT_ENTRIES ; 
 int LDT_ENTRY_SIZE ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ldt_struct*) ; 
 struct ldt_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (unsigned int) ; 

__attribute__((used)) static struct ldt_struct *FUNC5(unsigned int num_entries)
{
	struct ldt_struct *new_ldt;
	unsigned int alloc_size;

	if (num_entries > LDT_ENTRIES)
		return NULL;

	new_ldt = FUNC3(sizeof(struct ldt_struct), GFP_KERNEL);
	if (!new_ldt)
		return NULL;

	FUNC0(LDT_ENTRY_SIZE != sizeof(struct desc_struct));
	alloc_size = num_entries * LDT_ENTRY_SIZE;

	/*
	 * Xen is very picky: it requires a page-aligned LDT that has no
	 * trailing nonzero bytes in any page that contains LDT descriptors.
	 * Keep it simple: zero the whole allocation and never allocate less
	 * than PAGE_SIZE.
	 */
	if (alloc_size > PAGE_SIZE)
		new_ldt->entries = FUNC4(alloc_size);
	else
		new_ldt->entries = (void *)FUNC1(GFP_KERNEL);

	if (!new_ldt->entries) {
		FUNC2(new_ldt);
		return NULL;
	}

	/* The new LDT isn't aliased for PTI yet. */
	new_ldt->slot = -1;

	new_ldt->nr_entries = num_entries;
	return new_ldt;
}