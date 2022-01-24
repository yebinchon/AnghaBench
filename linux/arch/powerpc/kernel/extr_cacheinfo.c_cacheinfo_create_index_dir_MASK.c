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
struct cache_index_dir {struct cache_index_dir* next; int /*<<< orphan*/  kobj; struct cache* cache; } ;
struct cache_dir {struct cache_index_dir* index; int /*<<< orphan*/  kobj; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cache_index_type ; 
 int /*<<< orphan*/  FUNC0 (struct cache_index_dir*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cache_index_dir* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cache *cache, int index,
				       struct cache_dir *cache_dir)
{
	struct cache_index_dir *index_dir;
	int rc;

	index_dir = FUNC3(sizeof(*index_dir), GFP_KERNEL);
	if (!index_dir)
		return;

	index_dir->cache = cache;

	rc = FUNC1(&index_dir->kobj, &cache_index_type,
				  cache_dir->kobj, "index%d", index);
	if (rc) {
		FUNC2(&index_dir->kobj);
		return;
	}

	index_dir->next = cache_dir->index;
	cache_dir->index = index_dir;

	FUNC0(index_dir);
}