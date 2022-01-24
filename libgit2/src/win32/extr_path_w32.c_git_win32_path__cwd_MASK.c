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

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 size_t INT_MAX ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (char*,int*,int) ; 

int FUNC3(wchar_t *out, size_t len)
{
	int cwd_len;

	if (len > INT_MAX) {
		errno = ENAMETOOLONG;
		return -1;
	}

	if ((cwd_len = FUNC1(out, (int)len)) < 0)
		return -1;

	/* UNC paths */
	if (FUNC2(L"\\\\", out, 2) == 0) {
		/* Our buffer must be at least 5 characters larger than the
		 * current working directory:  we swallow one of the leading
		 * '\'s, but we we add a 'UNC' specifier to the path, plus
		 * a trailing directory separator, plus a NUL.
		 */
		if (cwd_len > MAX_PATH - 4) {
			errno = ENAMETOOLONG;
			return -1;
		}

		FUNC0(out+2, out, sizeof(wchar_t) * cwd_len);
		out[0] = L'U';
		out[1] = L'N';
		out[2] = L'C';

		cwd_len += 2;
	}

	/* Our buffer must be at least 2 characters larger than the current
	 * working directory.  (One character for the directory separator,
	 * one for the null.
	 */
	else if (cwd_len > MAX_PATH - 2) {
		errno = ENAMETOOLONG;
		return -1;
	}

	return cwd_len;
}