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
typedef  TYPE_1__ git_offmap ;
typedef  int /*<<< orphan*/  git_off_t ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 void* FUNC2 (TYPE_1__*,size_t) ; 

int FUNC3(void **value, git_offmap *map, size_t *iter, git_off_t *key)
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