#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache {size_t type; int /*<<< orphan*/  ofnode; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {char* size_prop; } ;

/* Variables and functions */
 int ENODEV ; 
 TYPE_1__* cache_type_info ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(const struct cache *cache, unsigned int *ret)
{
	const char *propname;
	const __be32 *cache_size;

	propname = cache_type_info[cache->type].size_prop;

	cache_size = FUNC0(cache->ofnode, propname, NULL);
	if (!cache_size)
		return -ENODEV;

	*ret = FUNC1(cache_size, 1);
	return 0;
}