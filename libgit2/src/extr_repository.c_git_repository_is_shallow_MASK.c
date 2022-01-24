#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  gitdir; } ;
typedef  TYPE_1__ git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 

int FUNC4(git_repository *repo)
{
	git_buf path = GIT_BUF_INIT;
	struct stat st;
	int error;

	if ((error = FUNC1(&path, repo->gitdir, "shallow")) < 0)
		return error;

	error = FUNC3(path.ptr, &st);
	FUNC0(&path);

	if (error == GIT_ENOTFOUND) {
		FUNC2();
		return 0;
	}

	if (error < 0)
		return error;
	return st.st_size == 0 ? 0 : 1;
}