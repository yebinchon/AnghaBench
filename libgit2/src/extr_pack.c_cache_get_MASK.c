#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ last_usage; int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ git_pack_cache_entry ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  use_ctr; int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ git_pack_cache ;
typedef  int /*<<< orphan*/  git_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static git_pack_cache_entry *FUNC4(git_pack_cache *cache, git_off_t offset)
{
	git_pack_cache_entry *entry;

	if (FUNC1(&cache->lock) < 0)
		return NULL;

	if ((entry = FUNC3(cache->entries, offset)) != NULL) {
		FUNC0(&entry->refcount);
		entry->last_usage = cache->use_ctr++;
	}
	FUNC2(&cache->lock);

	return entry;
}