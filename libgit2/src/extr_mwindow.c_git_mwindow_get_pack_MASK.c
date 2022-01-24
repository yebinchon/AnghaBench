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
struct git_pack_file {int /*<<< orphan*/  pack_name; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  git__mwindow_mutex ; 
 int /*<<< orphan*/  git__pack_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char**,char const*) ; 
 int FUNC6 (struct git_pack_file**,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct git_pack_file*) ; 
 struct git_pack_file* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct git_pack_file*) ; 

int FUNC10(struct git_pack_file **out, const char *path)
{
	struct git_pack_file *pack;
	char *packname;
	int error;

	if ((error = FUNC5(&packname, path)) < 0)
		return error;

	if (FUNC3(&git__mwindow_mutex) < 0) {
		FUNC2(GIT_ERROR_OS, "failed to lock mwindow mutex");
		return -1;
	}

	pack = FUNC8(git__pack_cache, packname);
	FUNC0(packname);

	if (pack != NULL) {
		FUNC1(&pack->refcount);
		FUNC4(&git__mwindow_mutex);
		*out = pack;
		return 0;
	}

	/* If we didn't find it, we need to create it */
	if ((error = FUNC6(&pack, path)) < 0) {
		FUNC4(&git__mwindow_mutex);
		return error;
	}

	FUNC1(&pack->refcount);

	error = FUNC9(git__pack_cache, pack->pack_name, pack);
	FUNC4(&git__mwindow_mutex);

	if (error < 0) {
		FUNC7(pack);
		return -1;
	}

	*out = pack;
	return 0;
}