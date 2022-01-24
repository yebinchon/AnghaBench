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
struct ref_iterator {int dummy; } ;
struct ref_dir {int dummy; } ;
struct ref_cache {int /*<<< orphan*/  root; } ;
struct cache_ref_iterator_level {int index; int /*<<< orphan*/  prefix_state; struct ref_dir* dir; } ;
struct cache_ref_iterator {int levels_nr; int /*<<< orphan*/  prefix; struct cache_ref_iterator_level* levels; int /*<<< orphan*/  levels_alloc; struct ref_iterator base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_ref_iterator_level*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PREFIX_CONTAINS_DIR ; 
 int /*<<< orphan*/  PREFIX_WITHIN_DIR ; 
 int /*<<< orphan*/  FUNC1 (struct ref_iterator*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cache_ref_iterator_vtable ; 
 struct ref_iterator* FUNC2 () ; 
 struct ref_dir* FUNC3 (struct ref_dir*,char const*,int /*<<< orphan*/ ) ; 
 struct ref_dir* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_dir*,char const*) ; 
 struct cache_ref_iterator* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

struct ref_iterator *FUNC8(struct ref_cache *cache,
					      const char *prefix,
					      int prime_dir)
{
	struct ref_dir *dir;
	struct cache_ref_iterator *iter;
	struct ref_iterator *ref_iterator;
	struct cache_ref_iterator_level *level;

	dir = FUNC4(cache->root);
	if (prefix && *prefix)
		dir = FUNC3(dir, prefix, 0);
	if (!dir)
		/* There's nothing to iterate over. */
		return FUNC2();

	if (prime_dir)
		FUNC5(dir, prefix);

	iter = FUNC6(1, sizeof(*iter));
	ref_iterator = &iter->base;
	FUNC1(ref_iterator, &cache_ref_iterator_vtable, 1);
	FUNC0(iter->levels, 10, iter->levels_alloc);

	iter->levels_nr = 1;
	level = &iter->levels[0];
	level->index = -1;
	level->dir = dir;

	if (prefix && *prefix) {
		iter->prefix = FUNC7(prefix);
		level->prefix_state = PREFIX_WITHIN_DIR;
	} else {
		level->prefix_state = PREFIX_CONTAINS_DIR;
	}

	return ref_iterator;
}