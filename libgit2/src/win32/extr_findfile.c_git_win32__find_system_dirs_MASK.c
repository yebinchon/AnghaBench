#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; scalar_t__ size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  REG_MSYSGIT_INSTALL ; 
 int /*<<< orphan*/  REG_MSYSGIT_INSTALL_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int FUNC7(git_buf *out, const wchar_t *subdir)
{
	git_buf buf = GIT_BUF_INIT;

	/* directories where git.exe & git.cmd are found */
	if (!FUNC5(&buf, L"git.exe", subdir) && buf.size)
		FUNC4(out, buf.ptr, buf.size);
	else
		FUNC0(out);

	if (!FUNC5(&buf, L"git.cmd", subdir) && buf.size)
		FUNC2(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);

	/* directories where git is installed according to registry */
	if (!FUNC6(
			&buf, HKEY_CURRENT_USER, REG_MSYSGIT_INSTALL_LOCAL, subdir) && buf.size)
		FUNC2(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);

	if (!FUNC6(
			&buf, HKEY_LOCAL_MACHINE, REG_MSYSGIT_INSTALL, subdir) && buf.size)
		FUNC2(out, GIT_PATH_LIST_SEPARATOR, out->ptr, buf.ptr);

	FUNC1(&buf);

	return (FUNC3(out) ? -1 : 0);
}