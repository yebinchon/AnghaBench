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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct pack_backend {int /*<<< orphan*/  packs; int /*<<< orphan*/ * pack_folder; } ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pack_backend*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  packfile_load__cb ; 

__attribute__((used)) static int FUNC7(git_odb_backend *backend_)
{
	int error;
	struct stat st;
	git_buf path = GIT_BUF_INIT;
	struct pack_backend *backend = (struct pack_backend *)backend_;

	if (backend->pack_folder == NULL)
		return 0;

	if (FUNC6(backend->pack_folder, &st) < 0 || !FUNC0(st.st_mode))
		return FUNC3("failed to refresh packfiles", NULL, 0);

	FUNC2(&path, backend->pack_folder);

	/* reload all packs */
	error = FUNC4(&path, 0, packfile_load__cb, backend);

	FUNC1(&path);
	FUNC5(&backend->packs);

	return error;
}