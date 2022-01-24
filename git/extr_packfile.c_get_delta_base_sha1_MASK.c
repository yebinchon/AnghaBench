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
struct revindex_entry {int /*<<< orphan*/  nr; } ;
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_OFS_DELTA ; 
 int OBJ_REF_DELTA ; 
 struct revindex_entry* FUNC0 (struct packed_git*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct packed_git*,struct pack_window**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned char const* FUNC2 (struct packed_git*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (struct packed_git*,struct pack_window**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const unsigned char *FUNC4(struct packed_git *p,
						struct pack_window **w_curs,
						off_t curpos,
						enum object_type type,
						off_t delta_obj_offset)
{
	if (type == OBJ_REF_DELTA) {
		unsigned char *base = FUNC3(p, w_curs, curpos, NULL);
		return base;
	} else if (type == OBJ_OFS_DELTA) {
		struct revindex_entry *revidx;
		off_t base_offset = FUNC1(p, w_curs, &curpos,
						   type, delta_obj_offset);

		if (!base_offset)
			return NULL;

		revidx = FUNC0(p, base_offset);
		if (!revidx)
			return NULL;

		return FUNC2(p, revidx->nr);
	} else
		return NULL;
}