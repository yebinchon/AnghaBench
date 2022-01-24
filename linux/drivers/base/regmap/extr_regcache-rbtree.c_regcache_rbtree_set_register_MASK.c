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
struct regmap {int dummy; } ;
struct regcache_rbtree_node {int /*<<< orphan*/  block; int /*<<< orphan*/  cache_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct regmap *map,
					 struct regcache_rbtree_node *rbnode,
					 unsigned int idx, unsigned int val)
{
	FUNC1(idx, rbnode->cache_present);
	FUNC0(map, rbnode->block, idx, val);
}