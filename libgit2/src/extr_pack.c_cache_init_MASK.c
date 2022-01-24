#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * entries; int /*<<< orphan*/  lock; int /*<<< orphan*/  memory_limit; } ;
typedef  TYPE_1__ git_pack_cache ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_PACK_CACHE_MEMORY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(git_pack_cache *cache)
{
	if (FUNC3(&cache->entries) < 0)
		return -1;

	cache->memory_limit = GIT_PACK_CACHE_MEMORY_LIMIT;

	if (FUNC2(&cache->lock)) {
		FUNC1(GIT_ERROR_OS, "failed to initialize pack cache mutex");

		FUNC0(cache->entries);
		cache->entries = NULL;

		return -1;
	}

	return 0;
}