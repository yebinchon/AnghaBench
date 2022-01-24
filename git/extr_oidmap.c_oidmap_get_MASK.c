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
struct TYPE_2__ {int /*<<< orphan*/  cmpfn; } ;
struct oidmap {TYPE_1__ map; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_id const*) ; 

void *FUNC2(const struct oidmap *map, const struct object_id *key)
{
	if (!map->map.cmpfn)
		return NULL;

	return FUNC0(&map->map, FUNC1(key), key);
}