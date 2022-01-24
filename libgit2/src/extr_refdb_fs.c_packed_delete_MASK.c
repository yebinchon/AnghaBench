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
struct TYPE_5__ {int /*<<< orphan*/  refcache; } ;
typedef  TYPE_1__ refdb_fs_backend ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int FUNC0 (size_t*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(refdb_fs_backend *backend, const char *ref_name)
{
	size_t pack_pos;
	int error, found = 0;

	if ((error = FUNC4(backend)) < 0)
		goto cleanup;

	if ((error = FUNC2(backend->refcache)) < 0)
		goto cleanup;

	/* If a packed reference exists, remove it from the packfile and repack if necessary */
	error = FUNC0(&pack_pos, backend->refcache, ref_name);
	if (error == 0) {
		error = FUNC1(backend->refcache, pack_pos);
		found = 1;
	}
	if (error == GIT_ENOTFOUND)
		error = 0;

	FUNC3(backend->refcache);

	if (found)
		error = FUNC5(backend);

cleanup:
	return error;
}