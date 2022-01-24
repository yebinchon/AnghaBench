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
struct packref {int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcache; int /*<<< orphan*/  gitpath; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_SYMREF ; 
 int /*<<< orphan*/  PACKREF_WAS_LOOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (void**,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC10(refdb_fs_backend *backend, const char *name)
{
	int error = 0;
	git_buf ref_file = GIT_BUF_INIT;
	struct packref *ref = NULL;
	git_oid oid;

	/* if we fail to load the loose reference, assume someone changed
	 * the filesystem under us and skip it...
	 */
	if (FUNC9(&ref_file, backend->gitpath, name) < 0) {
		FUNC3();
		goto done;
	}

	/* skip symbolic refs */
	if (!FUNC0(FUNC1(&ref_file), GIT_SYMREF))
		goto done;

	/* parse OID from file */
	if ((error = FUNC8(&oid, name, &ref_file)) < 0)
		goto done;

	FUNC6(backend->refcache);

	if (!(error = FUNC5(
			(void **)&ref, backend->refcache, name))) {

		FUNC4(&ref->oid, &oid);
		ref->flags = PACKREF_WAS_LOOSE;
	}

	FUNC7(backend->refcache);

done:
	FUNC2(&ref_file);
	return error;
}