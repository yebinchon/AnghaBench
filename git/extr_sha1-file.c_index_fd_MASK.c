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
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ big_file_threshold ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct index_state*,struct object_id*,int,int /*<<< orphan*/ ,int,char const*,unsigned int) ; 
 int FUNC3 (struct index_state*,struct object_id*,int,int,char const*,unsigned int) ; 
 int FUNC4 (struct object_id*,int,int /*<<< orphan*/ ,int,char const*,unsigned int) ; 
 int FUNC5 (struct index_state*,struct object_id*,int,char const*,unsigned int) ; 
 scalar_t__ FUNC6 (struct index_state*,char const*) ; 
 scalar_t__ FUNC7 (struct index_state*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(struct index_state *istate, struct object_id *oid,
	     int fd, struct stat *st,
	     enum object_type type, const char *path, unsigned flags)
{
	int ret;

	/*
	 * Call xsize_t() only when needed to avoid potentially unnecessary
	 * die() for large files.
	 */
	if (type == OBJ_BLOB && path && FUNC7(istate, path))
		ret = FUNC5(istate, oid, fd, path, flags);
	else if (!FUNC0(st->st_mode))
		ret = FUNC3(istate, oid, fd, type, path, flags);
	else if (st->st_size <= big_file_threshold || type != OBJ_BLOB ||
		 (path && FUNC6(istate, path)))
		ret = FUNC2(istate, oid, fd, FUNC8(st->st_size),
				 type, path, flags);
	else
		ret = FUNC4(oid, fd, FUNC8(st->st_size), type, path,
				   flags);
	FUNC1(fd);
	return ret;
}