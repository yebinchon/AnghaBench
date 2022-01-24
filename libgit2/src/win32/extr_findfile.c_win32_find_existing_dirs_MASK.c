#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; scalar_t__ size; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_12__ {int* path; } ;
typedef  TYPE_2__ _findfile_path ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC7(
	git_buf *out, const wchar_t *tmpl[])
{
	_findfile_path path16;
	git_buf buf = GIT_BUF_INIT;

	FUNC1(out);

	for (; *tmpl != NULL; tmpl++) {
		if (!FUNC5(&path16, *tmpl) &&
			path16.path[0] != L'%' &&
			!FUNC0(path16.path, F_OK))
		{
			FUNC6(&buf, path16.path);

			if (buf.size)
				FUNC3(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);
		}
	}

	FUNC2(&buf);

	return (FUNC4(out) ? -1 : 0);
}