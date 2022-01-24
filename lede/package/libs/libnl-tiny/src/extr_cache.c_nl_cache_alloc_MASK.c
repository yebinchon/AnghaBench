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
struct nl_cache_ops {int dummy; } ;
struct nl_cache {struct nl_cache_ops* c_ops; int /*<<< orphan*/  c_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct nl_cache*,int /*<<< orphan*/ ) ; 
 struct nl_cache* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nl_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct nl_cache *FUNC4(struct nl_cache_ops *ops)
{
	struct nl_cache *cache;

	cache = FUNC1(1, sizeof(*cache));
	if (!cache)
		return NULL;

	FUNC3(&cache->c_items);
	cache->c_ops = ops;

	FUNC0(2, "Allocated cache %p <%s>.\n", cache, FUNC2(cache));

	return cache;
}