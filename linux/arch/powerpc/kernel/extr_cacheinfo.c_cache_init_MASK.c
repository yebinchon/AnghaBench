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
struct cache {int type; int level; int /*<<< orphan*/  list; int /*<<< orphan*/  ofnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cache_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static void FUNC3(struct cache *cache, int type, int level,
		       struct device_node *ofnode)
{
	cache->type = type;
	cache->level = level;
	cache->ofnode = FUNC2(ofnode);
	FUNC0(&cache->list);
	FUNC1(&cache->list, &cache_list);
}