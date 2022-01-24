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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  int DWORD ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_HMODULE ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int WINHTTP_ERROR_BASE ; 
 int WINHTTP_ERROR_LAST ; 
 scalar_t__ FUNC5 (char**,int /*<<< orphan*/ *) ; 

char *FUNC6(DWORD error_code)
{
	LPWSTR lpMsgBuf = NULL;
	HMODULE hModule = NULL;
	char *utf8_msg = NULL;
	DWORD dwFlags =
		FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_IGNORE_INSERTS;

	if (!error_code)
		return NULL;

#ifdef GIT_WINHTTP
	/* Errors raised by WinHTTP are not in the system resource table */
	if (error_code >= WINHTTP_ERROR_BASE &&
		error_code <= WINHTTP_ERROR_LAST)
		hModule = GetModuleHandleW(L"winhttp");
#endif

	FUNC1(hModule);

	if (hModule)
		dwFlags |= FORMAT_MESSAGE_FROM_HMODULE;
	else
		dwFlags |= FORMAT_MESSAGE_FROM_SYSTEM;

	if (FUNC0(dwFlags, hModule, error_code,
		FUNC4(LANG_NEUTRAL, SUBLANG_DEFAULT),
		(LPWSTR)&lpMsgBuf, 0, NULL)) {
		/* Convert the message to UTF-8. If this fails, we will
		 * return NULL, which is a condition expected by the caller */
		if (FUNC5(&utf8_msg, lpMsgBuf) < 0)
			utf8_msg = NULL;

		FUNC3(lpMsgBuf);
	}

	return utf8_msg;
}