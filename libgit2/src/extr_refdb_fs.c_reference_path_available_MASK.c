#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct packref {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcache; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_refdb_backend ;

/* Variables and functions */
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct packref* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int*,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC8(
	refdb_fs_backend *backend,
	const char *new_ref,
	const char* old_ref,
	int force)
{
	size_t i;
	int error;

	if ((error = FUNC5(backend)) < 0)
		return error;

	if (!force) {
		int exists;

		if ((error = FUNC7(
			&exists, (git_refdb_backend *)backend, new_ref)) < 0) {
			return error;
		}

		if (exists) {
			FUNC0(GIT_ERROR_REFERENCE,
				"failed to write reference '%s': a reference with "
				"that name already exists.", new_ref);
			return GIT_EEXISTS;
		}
	}

	FUNC3(backend->refcache);

	for (i = 0; i < FUNC2(backend->refcache); ++i) {
		struct packref *ref = FUNC1(backend->refcache, i);

		if (ref && !FUNC6(old_ref, new_ref, ref->name)) {
			FUNC4(backend->refcache);
			FUNC0(GIT_ERROR_REFERENCE,
				"path to reference '%s' collides with existing one", new_ref);
			return -1;
		}
	}

	FUNC4(backend->refcache);
	return 0;
}