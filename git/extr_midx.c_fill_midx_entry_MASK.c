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
typedef  int /*<<< orphan*/  uint32_t ;
struct repository {int dummy; } ;
struct pack_entry {int dummy; } ;
struct object_id {int dummy; } ;
struct multi_pack_index {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id const*,struct multi_pack_index*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct repository*,struct multi_pack_index*,struct pack_entry*,int /*<<< orphan*/ ) ; 

int FUNC2(struct repository * r,
		    const struct object_id *oid,
		    struct pack_entry *e,
		    struct multi_pack_index *m)
{
	uint32_t pos;

	if (!FUNC0(oid, m, &pos))
		return 0;

	return FUNC1(r, m, e, pos);
}