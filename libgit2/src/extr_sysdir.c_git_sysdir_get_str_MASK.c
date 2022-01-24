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
typedef  int /*<<< orphan*/  git_sysdir_t ;
struct TYPE_4__ {size_t size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const**,int /*<<< orphan*/ ) ; 

int FUNC5(
	char *out,
	size_t outlen,
	git_sysdir_t which)
{
	const git_buf *path = NULL;

	FUNC0(FUNC3(which));
	FUNC0(FUNC4(&path, which));

	if (!out || path->size >= outlen) {
		FUNC2(GIT_ERROR_NOMEMORY, "buffer is too short for the path");
		return GIT_EBUFS;
	}

	FUNC1(out, outlen, path);
	return 0;
}