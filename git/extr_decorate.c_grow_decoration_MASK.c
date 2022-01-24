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
struct object {int dummy; } ;
struct decoration_entry {void* decoration; struct object* base; } ;
struct decoration {int size; scalar_t__ nr; struct decoration_entry* entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decoration_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct decoration*,struct object const*,void*) ; 
 struct decoration_entry* FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct decoration *n)
{
	int i;
	int old_size = n->size;
	struct decoration_entry *old_entries = n->entries;

	n->size = (old_size + 1000) * 3 / 2;
	n->entries = FUNC2(n->size, sizeof(struct decoration_entry));
	n->nr = 0;

	for (i = 0; i < old_size; i++) {
		const struct object *base = old_entries[i].base;
		void *decoration = old_entries[i].decoration;

		if (!decoration)
			continue;
		FUNC1(n, base, decoration);
	}
	FUNC0(old_entries);
}