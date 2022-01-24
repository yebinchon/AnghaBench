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
struct hashmap_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hashmap_entry*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_1__*,struct hashmap_entry*,struct object_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC3 (struct oidmap*,int /*<<< orphan*/ ) ; 

void *FUNC4(struct oidmap *map, const struct object_id *key)
{
	struct hashmap_entry entry;

	if (!map->map.cmpfn)
		FUNC3(map, 0);

	FUNC0(&entry, FUNC2(key));
	return FUNC1(&map->map, &entry, key);
}