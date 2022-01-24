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
typedef  int wchar_t ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  WIN32_FILE_ATTRIBUTE_DATA ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
#define  ERROR_ACCESS_DENIED 128 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  GetFileExInfoStandard ; 
 int FUNC2 () ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int FUNC4 (struct stat*,int /*<<< orphan*/ *,int*) ; 
 size_t FUNC5 (int*) ; 

__attribute__((used)) static int FUNC6(
	wchar_t *path,
	struct stat *buf,
	bool posix_enotdir)
{
	WIN32_FILE_ATTRIBUTE_DATA fdata;

	if (FUNC0(path, GetFileExInfoStandard, &fdata)) {
		if (!buf)
			return 0;

		return FUNC4(buf, &fdata, path);
	}

	switch (FUNC2()) {
	case ERROR_ACCESS_DENIED:
		errno = EACCES;
		break;
	default:
		errno = ENOENT;
		break;
	}

	/* To match POSIX behavior, set ENOTDIR when any of the folders in the
	 * file path is a regular file, otherwise set ENOENT.
	 */
	if (errno == ENOENT && posix_enotdir) {
		size_t path_len = FUNC5(path);

		/* scan up path until we find an existing item */
		while (1) {
			DWORD attrs;

			/* remove last directory component */
			for (path_len--; path_len > 0 && !FUNC3(path[path_len]); path_len--);

			if (path_len <= 0)
				break;

			path[path_len] = L'\0';
			attrs = FUNC1(path);

			if (attrs != INVALID_FILE_ATTRIBUTES) {
				if (!(attrs & FILE_ATTRIBUTE_DIRECTORY))
					errno = ENOTDIR;
				break;
			}
		}
	}

	return -1;
}