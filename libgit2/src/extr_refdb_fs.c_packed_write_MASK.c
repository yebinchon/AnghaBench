#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct packref {int dummy; } ;
struct TYPE_5__ {scalar_t__ fsync; int /*<<< orphan*/ * refcache; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_sortedcache ;
typedef  int /*<<< orphan*/  git_filebuf ;

/* Variables and functions */
 int GIT_FILEBUF_FSYNC ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_PACKEDREFS_FILE_MODE ; 
 int /*<<< orphan*/  GIT_PACKEDREFS_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct packref*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct packref* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,struct packref*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (struct packref*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(refdb_fs_backend *backend)
{
	git_sortedcache *refcache = backend->refcache;
	git_filebuf pack_file = GIT_FILEBUF_INIT;
	int error, open_flags = 0;
	size_t i;

	/* lock the cache to updates while we do this */
	if ((error = FUNC9(refcache)) < 0)
		return error;

	if (backend->fsync)
		open_flags = GIT_FILEBUF_FSYNC;

	/* Open the file! */
	if ((error = FUNC3(&pack_file, FUNC7(refcache), open_flags, GIT_PACKEDREFS_FILE_MODE)) < 0)
		goto fail;

	/* Packfiles have a header... apparently
	 * This is in fact not required, but we might as well print it
	 * just for kicks */
	if ((error = FUNC4(&pack_file, "%s\n", GIT_PACKEDREFS_HEADER)) < 0)
		goto fail;

	for (i = 0; i < FUNC6(refcache); ++i) {
		struct packref *ref = FUNC5(refcache, i);
		FUNC0(ref);

		if ((error = FUNC11(backend, ref)) < 0)
			goto fail;

		if ((error = FUNC13(ref, &pack_file)) < 0)
			goto fail;
	}

	/* if we've written all the references properly, we can commit
	 * the packfile to make the changes effective */
	if ((error = FUNC2(&pack_file)) < 0)
		goto fail;

	/* when and only when the packfile has been properly written,
	 * we can go ahead and remove the loose refs */
	if ((error = FUNC12(backend)) < 0)
		goto fail;

	FUNC8(refcache);
	FUNC10(refcache);

	/* we're good now */
	return 0;

fail:
	FUNC1(&pack_file);
	FUNC10(refcache);

	return error;
}