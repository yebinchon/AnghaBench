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
struct device_node {int dummy; } ;
struct cache {int level; int /*<<< orphan*/  ofnode; } ;

/* Variables and functions */
 struct cache* FUNC0 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,struct cache*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static void FUNC5(struct cache *cache)
{
	struct device_node *subcache_node;
	int level = cache->level;

	FUNC1(cache);

	while ((subcache_node = FUNC3(cache->ofnode))) {
		struct cache *subcache;

		level++;
		subcache = FUNC0(subcache_node, level);
		FUNC4(subcache_node);
		if (!subcache)
			break;

		FUNC2(cache, subcache);
		cache = subcache;
	}
}