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
struct unpack_trees_options {struct index_state* src_index; } ;
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry*) ; 
 int FUNC1 (struct cache_entry*,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct cache_entry *ce,
				   struct unpack_trees_options *o)
{
	struct index_state *index = o->src_index;
	int len = FUNC0(ce);
	int pos;

	for (pos = FUNC1(ce, o); pos < index->cache_nr; pos++) {
		struct cache_entry *next = index->cache[pos];
		if (len != FUNC0(next) ||
		    FUNC3(ce->name, next->name, len))
			break;
		FUNC2(next, o);
	}
}