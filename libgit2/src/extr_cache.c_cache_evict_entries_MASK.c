#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ git_cached_obj ;
struct TYPE_8__ {int /*<<< orphan*/  used_memory; int /*<<< orphan*/  map; } ;
typedef  TYPE_2__ git_cache ;

/* Variables and functions */
 scalar_t__ GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_cache__current_storage ; 
 size_t FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (void**,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static void FUNC6(git_cache *cache)
{
	size_t evict_count = FUNC2(cache) / 2048, i;
	ssize_t evicted_memory = 0;

	if (evict_count < 8)
		evict_count = 8;

	/* do not infinite loop if there's not enough entries to evict  */
	if (evict_count > FUNC2(cache)) {
		FUNC0(cache);
		return;
	}

	i = 0;
	while (evict_count > 0) {
		git_cached_obj *evict;
		const git_oid *key;

		if (FUNC5((void **) &evict, cache->map, &i, &key) == GIT_ITEROVER)
			break;

		evict_count--;
		evicted_memory += evict->size;
		FUNC4(cache->map, key);
		FUNC3(evict);
	}

	cache->used_memory -= evicted_memory;
	FUNC1(&git_cache__current_storage, -evicted_memory);
}