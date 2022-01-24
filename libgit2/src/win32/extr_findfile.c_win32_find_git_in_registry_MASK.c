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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  path ;
typedef  scalar_t__ git_win32_path ;
typedef  int /*<<< orphan*/  git_buf ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC7(
	git_buf *buf, const HKEY hive, const wchar_t *key, const wchar_t *subdir)
{
	HKEY hKey;
	int error = GIT_ENOTFOUND;

	FUNC3(buf);

	if (!FUNC1(hive, key, 0, KEY_READ, &hKey)) {
		DWORD dwType, cbData;
		git_win32_path path;

		/* Ensure that the buffer is big enough to have the suffix attached
		 * after we receive the result. */
		cbData = (DWORD)(sizeof(path) - FUNC5(subdir) * sizeof(wchar_t));

		/* InstallLocation points to the root of the git directory */
		if (!FUNC2(hKey, L"InstallLocation", NULL, &dwType, (LPBYTE)path, &cbData) &&
			dwType == REG_SZ) {

			/* Append the suffix */
			FUNC4(path, subdir);

			/* Convert to UTF-8, with forward slashes, and output the path
			 * to the provided buffer */
			if (!FUNC6(buf, path))
				error = 0;
		}

		FUNC0(hKey);
	}

	return error;
}