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
struct oidmap_entry {int /*<<< orphan*/  internal_entry; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmpfn; } ;
struct oidmap {TYPE_1__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oidmap*,int /*<<< orphan*/ ) ; 

void *FUNC4(struct oidmap *map, void *entry)
{
	struct oidmap_entry *to_put = entry;

	if (!map->map.cmpfn)
		FUNC3(map, 0);

	FUNC0(&to_put->internal_entry, FUNC2(&to_put->oid));
	return FUNC1(&map->map, &to_put->internal_entry);
}