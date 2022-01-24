#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct packref {int flags; int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int /*<<< orphan*/  refcache; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_14__ {int /*<<< orphan*/  path_original; } ;
typedef  TYPE_2__ git_filebuf ;
struct TYPE_15__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 TYPE_2__ GIT_FILEBUF_INIT ; 
 int /*<<< orphan*/  GIT_SYMREF ; 
 int PACKREF_WAS_LOOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct packref* FUNC6 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(refdb_fs_backend *backend)
{
	size_t i;
	git_filebuf lock = GIT_FILEBUF_INIT;
	git_buf ref_content = GIT_BUF_INIT;
	int error = 0;

	/* backend->refcache is already locked when this is called */

	for (i = 0; i < FUNC7(backend->refcache); ++i) {
		struct packref *ref = FUNC6(backend->refcache, i);
		git_oid current_id;

		if (!ref || !(ref->flags & PACKREF_WAS_LOOSE))
			continue;

		FUNC3(&lock);

		/* We need to stop anybody from updating the ref while we try to do a safe delete */
		error = FUNC8(&lock, backend, ref->name);
		/* If someone else is updating it, let them do it */
		if (error == GIT_EEXISTS || error == GIT_ENOTFOUND)
			continue;

		if (error < 0) {
			FUNC1(&ref_content);
			FUNC2(GIT_ERROR_REFERENCE, "failed to lock loose reference '%s'", ref->name);
			return error;
		}

		error = FUNC4(&ref_content, lock.path_original);
		/* Someone else beat us to cleaning up the ref, let's simply continue */
		if (error == GIT_ENOTFOUND)
			continue;

		/* This became a symref between us packing and trying to delete it, so ignore it */
		if (!FUNC0(ref_content.ptr, GIT_SYMREF))
			continue;

		/* Figure out the current id; if we find a bad ref file, skip it so we can do the rest */
		if (FUNC9(&current_id, lock.path_original, &ref_content) < 0)
			continue;

		/* If the ref moved since we packed it, we must not delete it */
		if (!FUNC5(&current_id, &ref->oid))
			continue;

		/*
		 * if we fail to remove a single file, this is *not* good,
		 * but we should keep going and remove as many as possible.
		 * If we fail to remove, the ref is still in the old state, so
		 * we haven't lost information.
		 */
		FUNC10(lock.path_original);
	}

	FUNC1(&ref_content);
	FUNC3(&lock);
	return 0;
}