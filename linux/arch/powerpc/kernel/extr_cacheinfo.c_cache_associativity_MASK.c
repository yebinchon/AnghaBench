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
struct cache {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct cache const*,unsigned int*) ; 
 scalar_t__ FUNC1 (struct cache const*,unsigned int*) ; 
 scalar_t__ FUNC2 (struct cache const*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(const struct cache *cache, unsigned int *ret)
{
	unsigned int line_size;
	unsigned int nr_sets;
	unsigned int size;

	if (FUNC1(cache, &nr_sets))
		goto err;

	/* If the cache is fully associative, there is no need to
	 * check the other properties.
	 */
	if (nr_sets == 1) {
		*ret = 0;
		return 0;
	}

	if (FUNC0(cache, &line_size))
		goto err;
	if (FUNC2(cache, &size))
		goto err;

	if (!(nr_sets > 0 && size > 0 && line_size > 0))
		goto err;

	*ret = (size / nr_sets) / line_size;
	return 0;
err:
	return -ENODEV;
}