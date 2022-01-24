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
struct index_state {int cache_nr; struct cache_entry const** cache; } ;
typedef  struct cache_entry {int /*<<< orphan*/  name; } const cache_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,struct cache_entry const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct index_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_entry const*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(const struct cache_entry *ce,
			      struct unpack_trees_options *o)
{
	struct index_state *index = o->src_index;
	int len = FUNC1(ce);
	int pos = FUNC3(index, ce->name, len);

	if (0 <= pos)
		FUNC2("programming error in a caller of mark_ce_used_same_name");
	for (pos = -pos - 1; pos < index->cache_nr; pos++) {
		struct cache_entry *next = index->cache[pos];
		if (len != FUNC1(next) ||
		    FUNC5(ce->name, next->name, len))
			break;
		FUNC0(o, next, 0, 0);
		FUNC4(next, o);
	}
}