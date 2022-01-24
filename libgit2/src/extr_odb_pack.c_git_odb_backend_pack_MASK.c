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
struct pack_backend {int /*<<< orphan*/  pack_folder; } ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pack_backend**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(git_odb_backend **backend_out, const char *objects_dir)
{
	int error = 0;
	struct pack_backend *backend = NULL;
	git_buf path = GIT_BUF_INIT;

	if (FUNC5(&backend, 8) < 0)
		return -1;

	if (!(error = FUNC3(&path, objects_dir, "pack")) &&
		FUNC4(FUNC0(&path)))
	{
		backend->pack_folder = FUNC1(&path);
		error = FUNC7((git_odb_backend *)backend);
	}

	if (error < 0) {
		FUNC6((git_odb_backend *)backend);
		backend = NULL;
	}

	*backend_out = (git_odb_backend *)backend;

	FUNC2(&path);

	return error;
}