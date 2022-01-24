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
struct pack_idx_entry {int dummy; } ;
struct object_entry_pool {int /*<<< orphan*/  entries; struct object_entry* next_free; struct object_entry_pool* next_pool; } ;
struct object_entry {scalar_t__ pack_id; int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pack_idx_entry**,int) ; 
 struct object_entry_pool* blocks ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pack_idx_entry**) ; 
 int object_count ; 
 TYPE_1__* pack_data ; 
 scalar_t__ pack_id ; 
 int /*<<< orphan*/  pack_idx_opts ; 
 char* FUNC3 (int /*<<< orphan*/ *,struct pack_idx_entry**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(void)
{
	const char *tmpfile;
	struct pack_idx_entry **idx, **c, **last;
	struct object_entry *e;
	struct object_entry_pool *o;

	/* Build the table of object IDs. */
	FUNC0(idx, object_count);
	c = idx;
	for (o = blocks; o; o = o->next_pool)
		for (e = o->next_free; e-- != o->entries;)
			if (pack_id == e->pack_id)
				*c++ = &e->idx;
	last = idx + object_count;
	if (c != last)
		FUNC1("internal consistency error creating the index");

	tmpfile = FUNC3(NULL, idx, object_count, &pack_idx_opts,
				 pack_data->hash);
	FUNC2(idx);
	return tmpfile;
}