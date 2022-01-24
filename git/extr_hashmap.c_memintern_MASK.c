#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct pool_entry {size_t len; void const* data; TYPE_1__ ent; } ;
struct hashmap {int /*<<< orphan*/  tablesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pool_entry*,void const*,void const*,size_t) ; 
 int /*<<< orphan*/  ent ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct pool_entry* FUNC3 (struct hashmap*,struct pool_entry*,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct hashmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void const*,size_t) ; 
 int /*<<< orphan*/  pool_entry_cmp ; 

const void *FUNC6(const void *data, size_t len)
{
	static struct hashmap map;
	struct pool_entry key, *e;

	/* initialize string pool hashmap */
	if (!map.tablesize)
		FUNC4(&map, pool_entry_cmp, NULL, 0);

	/* lookup interned string in pool */
	FUNC2(&key.ent, FUNC5(data, len));
	key.len = len;
	e = FUNC3(&map, &key, ent, data);
	if (!e) {
		/* not found: create it */
		FUNC0(e, data, data, len);
		FUNC2(&e->ent, key.ent.hash);
		e->len = len;
		FUNC1(&map, &e->ent);
	}
	return e->data;
}