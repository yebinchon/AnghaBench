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
struct packref {int /*<<< orphan*/  peel; int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  refcache; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct packref* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
	git_reference **out,
	refdb_fs_backend *backend,
	const char *ref_name)
{
	int error = 0;
	struct packref *entry;

	if ((error = FUNC4(backend)) < 0)
		return error;

	if (FUNC2(backend->refcache) < 0)
		return -1;

	entry = FUNC1(backend->refcache, ref_name);
	if (!entry) {
		error = FUNC5(ref_name);
	} else {
		*out = FUNC0(ref_name, &entry->oid, &entry->peel);
		if (!*out)
			error = -1;
	}

	FUNC3(backend->refcache);

	return error;
}