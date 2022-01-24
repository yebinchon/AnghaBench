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
struct git_pack_file {int /*<<< orphan*/  mwf; } ;
typedef  int /*<<< orphan*/  git_packfile_stream ;
typedef  scalar_t__ git_off_t ;
typedef  scalar_t__ git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow ;

/* Variables and functions */
 scalar_t__ GIT_OBJECT_OFS_DELTA ; 
 scalar_t__ GIT_OBJECT_REF_DELTA ; 
 scalar_t__ FUNC0 (struct git_pack_file*,int /*<<< orphan*/ **,scalar_t__*,scalar_t__,scalar_t__) ; 
 int FUNC1 (size_t*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct git_pack_file*,scalar_t__) ; 
 int FUNC5 (size_t*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 

int FUNC6(
		size_t *size_p,
		git_object_t *type_p,
		struct git_pack_file *p,
		git_off_t offset)
{
	git_mwindow *w_curs = NULL;
	git_off_t curpos = offset;
	size_t size;
	git_object_t type;
	git_off_t base_offset;
	int error;

	error = FUNC5(&size, &type, &p->mwf, &w_curs, &curpos);
	if (error < 0)
		return error;

	if (type == GIT_OBJECT_OFS_DELTA || type == GIT_OBJECT_REF_DELTA) {
		size_t base_size;
		git_packfile_stream stream;

		base_offset = FUNC0(p, &w_curs, &curpos, type, offset);
		FUNC2(&w_curs);
		if ((error = FUNC4(&stream, p, curpos)) < 0)
			return error;
		error = FUNC1(&base_size, size_p, &stream);
		FUNC3(&stream);
		if (error < 0)
			return error;
	} else {
		*size_p = size;
		base_offset = 0;
	}

	while (type == GIT_OBJECT_OFS_DELTA || type == GIT_OBJECT_REF_DELTA) {
		curpos = base_offset;
		error = FUNC5(&size, &type, &p->mwf, &w_curs, &curpos);
		if (error < 0)
			return error;
		if (type != GIT_OBJECT_OFS_DELTA && type != GIT_OBJECT_REF_DELTA)
			break;
		base_offset = FUNC0(p, &w_curs, &curpos, type, base_offset);
		FUNC2(&w_curs);
	}
	*type_p = type;

	return error;
}