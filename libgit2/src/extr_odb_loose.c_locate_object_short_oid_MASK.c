#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t short_oid_len; int found; scalar_t__ res_oid; void* dir_len; scalar_t__ short_oid; } ;
typedef  TYPE_1__ loose_locate_object_state ;
struct TYPE_15__ {char* objects_dir; } ;
typedef  TYPE_2__ loose_backend ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_16__ {char* ptr; int size; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 int GIT_EAMBIGUOUS ; 
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,int) ; 
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  fn_locate_object_short_oid ; 
 scalar_t__ FUNC1 (TYPE_3__*,size_t) ; 
 void* FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 size_t FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(
	git_buf *object_location,
	git_oid *res_oid,
	loose_backend *backend,
	const git_oid *short_oid,
	size_t len)
{
	char *objects_dir = backend->objects_dir;
	size_t dir_len = FUNC14(objects_dir), alloc_len;
	loose_locate_object_state state;
	int error;

	/* prealloc memory for OBJ_DIR/xx/xx..38x..xx */
	FUNC0(&alloc_len, dir_len, GIT_OID_HEXSZ);
	FUNC0(&alloc_len, alloc_len, 3);
	if (FUNC1(object_location, alloc_len) < 0)
		return -1;

	FUNC4(object_location, objects_dir, dir_len);
	FUNC13(object_location);

	/* save adjusted position at end of dir so it can be restored later */
	dir_len = FUNC2(object_location);

	/* Convert raw oid to hex formatted oid */
	FUNC8((char *)state.short_oid, short_oid);

	/* Explore OBJ_DIR/xx/ where xx is the beginning of hex formatted short oid */
	if (FUNC3(object_location, (char *)state.short_oid, 3) < 0)
		return -1;
	object_location->ptr[object_location->size - 1] = '/';

	/* Check that directory exists */
	if (FUNC12(object_location->ptr) == false)
		return FUNC7("no matching loose object for prefix",
			short_oid, len);

	state.dir_len = FUNC2(object_location);
	state.short_oid_len = len;
	state.found = 0;

	/* Explore directory to find a unique object matching short_oid */
	error = FUNC11(
		object_location, 0, fn_locate_object_short_oid, &state);
	if (error < 0 && error != GIT_EAMBIGUOUS)
		return error;

	if (!state.found)
		return FUNC7("no matching loose object for prefix",
			short_oid, len);

	if (state.found > 1)
		return FUNC6("multiple matches in loose objects");

	/* Convert obtained hex formatted oid to raw */
	error = FUNC9(res_oid, (char *)state.res_oid);
	if (error)
		return error;

	/* Update the location according to the oid obtained */
	FUNC0(&alloc_len, dir_len, GIT_OID_HEXSZ);
	FUNC0(&alloc_len, alloc_len, 2);

	FUNC5(object_location, dir_len);
	if (FUNC1(object_location, alloc_len) < 0)
		return -1;

	FUNC10(object_location->ptr + dir_len, res_oid);

	object_location->size += GIT_OID_HEXSZ + 1;
	object_location->ptr[object_location->size] = '\0';

	return 0;
}