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
typedef  size_t uint32_t ;
struct packed_git {size_t num_objects; char* pack_name; TYPE_1__* revindex; } ;
struct object_id {int dummy; } ;
typedef  enum for_each_object_flags { ____Placeholder_for_each_object_flags } for_each_object_flags ;
typedef  int (* each_packed_object_fn ) (struct object_id*,struct packed_git*,size_t,void*) ;
struct TYPE_2__ {size_t nr; } ;

/* Variables and functions */
 int FOR_EACH_OBJECT_PACK_ORDER ; 
 int FUNC0 (char*,size_t,char*) ; 
 scalar_t__ FUNC1 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,struct packed_git*,size_t) ; 

int FUNC3(struct packed_git *p,
			    each_packed_object_fn cb, void *data,
			    enum for_each_object_flags flags)
{
	uint32_t i;
	int r = 0;

	if (flags & FOR_EACH_OBJECT_PACK_ORDER) {
		if (FUNC1(p))
			return -1;
	}

	for (i = 0; i < p->num_objects; i++) {
		uint32_t pos;
		struct object_id oid;

		if (flags & FOR_EACH_OBJECT_PACK_ORDER)
			pos = p->revindex[i].nr;
		else
			pos = i;

		if (!FUNC2(&oid, p, pos))
			return FUNC0("unable to get sha1 of object %u in %s",
				     pos, p->pack_name);

		r = cb(&oid, p, pos, data);
		if (r)
			break;
	}
	return r;
}