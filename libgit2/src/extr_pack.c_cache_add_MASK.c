#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ len; } ;
typedef  TYPE_2__ git_rawobj ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_15__ {TYPE_1__ raw; } ;
typedef  TYPE_3__ git_pack_cache_entry ;
struct TYPE_16__ {scalar_t__ memory_used; scalar_t__ memory_limit; int /*<<< orphan*/  lock; int /*<<< orphan*/  entries; } ;
typedef  TYPE_4__ git_pack_cache ;
typedef  int /*<<< orphan*/  git_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 scalar_t__ GIT_PACK_CACHE_SIZE_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(
		git_pack_cache_entry **cached_out,
		git_pack_cache *cache,
		git_rawobj *base,
		git_off_t offset)
{
	git_pack_cache_entry *entry;
	int exists;

	if (base->len > GIT_PACK_CACHE_SIZE_LIMIT)
		return -1;

	entry = FUNC7(base);
	if (entry) {
		if (FUNC3(&cache->lock) < 0) {
			FUNC2(GIT_ERROR_OS, "failed to lock cache");
			FUNC1(entry);
			return -1;
		}
		/* Add it to the cache if nobody else has */
		exists = FUNC5(cache->entries, offset);
		if (!exists) {
			while (cache->memory_used + base->len > cache->memory_limit)
				FUNC0(cache);

			FUNC6(cache->entries, offset, entry);
			cache->memory_used += entry->raw.len;

			*cached_out = entry;
		}
		FUNC4(&cache->lock);
		/* Somebody beat us to adding it into the cache */
		if (exists) {
			FUNC1(entry);
			return -1;
		}
	}

	return 0;
}