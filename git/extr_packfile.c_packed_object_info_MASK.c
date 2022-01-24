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
struct revindex_entry {scalar_t__ offset; } ;
struct repository {int dummy; } ;
struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
struct object_info {unsigned long* sizep; int* typep; int /*<<< orphan*/  whence; scalar_t__ delta_base_sha1; scalar_t__ type_name; scalar_t__* disk_sizep; int /*<<< orphan*/ * contentp; } ;
typedef  scalar_t__ off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BAD ; 
 int OBJ_OFS_DELTA ; 
 int OBJ_REF_DELTA ; 
 int /*<<< orphan*/  OI_DBCACHED ; 
 int /*<<< orphan*/  OI_PACKED ; 
 int /*<<< orphan*/  FUNC0 (struct repository*,struct packed_git*,scalar_t__,unsigned long*,int*) ; 
 struct revindex_entry* FUNC1 (struct packed_git*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct packed_git*,struct pack_window**,scalar_t__*,int,scalar_t__) ; 
 unsigned char* FUNC3 (struct packed_git*,struct pack_window**,scalar_t__,int,scalar_t__) ; 
 unsigned long FUNC4 (struct packed_git*,struct pack_window**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char const*) ; 
 scalar_t__ FUNC7 (struct packed_git*,scalar_t__) ; 
 int FUNC8 (struct repository*,struct packed_git*,scalar_t__,int,struct pack_window**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*) ; 
 char* FUNC10 (int) ; 
 int FUNC11 (struct packed_git*,struct pack_window**,scalar_t__*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (struct pack_window**) ; 

int FUNC13(struct repository *r, struct packed_git *p,
		       off_t obj_offset, struct object_info *oi)
{
	struct pack_window *w_curs = NULL;
	unsigned long size;
	off_t curpos = obj_offset;
	enum object_type type;

	/*
	 * We always get the representation type, but only convert it to
	 * a "real" type later if the caller is interested.
	 */
	if (oi->contentp) {
		*oi->contentp = FUNC0(r, p, obj_offset, oi->sizep,
						      &type);
		if (!*oi->contentp)
			type = OBJ_BAD;
	} else {
		type = FUNC11(p, &w_curs, &curpos, &size);
	}

	if (!oi->contentp && oi->sizep) {
		if (type == OBJ_OFS_DELTA || type == OBJ_REF_DELTA) {
			off_t tmp_pos = curpos;
			off_t base_offset = FUNC2(p, &w_curs, &tmp_pos,
							   type, obj_offset);
			if (!base_offset) {
				type = OBJ_BAD;
				goto out;
			}
			*oi->sizep = FUNC4(p, &w_curs, tmp_pos);
			if (*oi->sizep == 0) {
				type = OBJ_BAD;
				goto out;
			}
		} else {
			*oi->sizep = size;
		}
	}

	if (oi->disk_sizep) {
		struct revindex_entry *revidx = FUNC1(p, obj_offset);
		*oi->disk_sizep = revidx[1].offset - obj_offset;
	}

	if (oi->typep || oi->type_name) {
		enum object_type ptot;
		ptot = FUNC8(r, p, obj_offset,
					     type, &w_curs, curpos);
		if (oi->typep)
			*oi->typep = ptot;
		if (oi->type_name) {
			const char *tn = FUNC10(ptot);
			if (tn)
				FUNC9(oi->type_name, tn);
		}
		if (ptot < 0) {
			type = OBJ_BAD;
			goto out;
		}
	}

	if (oi->delta_base_sha1) {
		if (type == OBJ_OFS_DELTA || type == OBJ_REF_DELTA) {
			const unsigned char *base;

			base = FUNC3(p, &w_curs, curpos,
						   type, obj_offset);
			if (!base) {
				type = OBJ_BAD;
				goto out;
			}

			FUNC6(oi->delta_base_sha1, base);
		} else
			FUNC5(oi->delta_base_sha1);
	}

	oi->whence = FUNC7(p, obj_offset) ? OI_DBCACHED :
							  OI_PACKED;

out:
	FUNC12(&w_curs);
	return type;
}