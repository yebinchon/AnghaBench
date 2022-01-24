#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t n_buckets; } ;
typedef  TYPE_1__ git_strmap ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 char* FUNC1 (TYPE_1__*,size_t) ; 
 void* FUNC2 (TYPE_1__*,size_t) ; 

int FUNC3(void **value, git_strmap *map, size_t *iter, const char **key)
{
	size_t i = *iter;

	while (i < map->n_buckets && !FUNC0(map, i))
		i++;

	if (i >= map->n_buckets)
		return GIT_ITEROVER;

	if (key)
		*key = FUNC1(map, i);
	if (value)
		*value = FUNC2(map, i);
	*iter = ++i;

	return 0;
}