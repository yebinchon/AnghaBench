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
struct TYPE_2__ {char** line_size_props; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int ENODEV ; 
 TYPE_1__* cache_type_info ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(const struct cache *cache, unsigned int *ret)
{
	const __be32 *line_size;
	int i, lim;

	lim = FUNC0(cache_type_info[cache->type].line_size_props);

	for (i = 0; i < lim; i++) {
		const char *propname;

		propname = cache_type_info[cache->type].line_size_props[i];
		line_size = FUNC1(cache->ofnode, propname, NULL);
		if (line_size)
			break;
	}

	if (!line_size)
		return -ENODEV;

	*ret = FUNC2(line_size, 1);
	return 0;
}