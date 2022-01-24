#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_2__ {int /*<<< orphan*/  error_buf; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int GIT_ERROR_OS ; 
 TYPE_1__* GIT_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* FUNC10 (int) ; 

void FUNC11(int error_class, const char *fmt, va_list ap)
{
#ifdef GIT_WIN32
	DWORD win32_error_code = (error_class == GIT_ERROR_OS) ? GetLastError() : 0;
#endif
	int error_code = (error_class == GIT_ERROR_OS) ? errno : 0;
	git_buf *buf = &GIT_GLOBAL->error_buf;

	FUNC4(buf);
	if (fmt) {
		FUNC7(buf, fmt, ap);
		if (error_class == GIT_ERROR_OS)
			FUNC3(buf, ": ");
	}

	if (error_class == GIT_ERROR_OS) {
#ifdef GIT_WIN32
		char * win32_error = git_win32_get_error_message(win32_error_code);
		if (win32_error) {
			git_buf_puts(buf, win32_error);
			git__free(win32_error);

			SetLastError(0);
		}
		else
#endif
		if (error_code)
			FUNC6(buf, FUNC10(error_code));

		if (error_code)
			errno = 0;
	}

	if (!FUNC5(buf))
		FUNC9(error_class);
}