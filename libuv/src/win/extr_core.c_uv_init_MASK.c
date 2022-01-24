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

/* Variables and functions */
 int SEM_FAILCRITICALERRORS ; 
 int SEM_NOGPFAULTERRORBOX ; 
 int SEM_NOOPENFILEERRORBOX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uv__crt_dbg_report_handler ; 
 int /*<<< orphan*/  uv__crt_invalid_parameter_handler ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void) {
  /* Tell Windows that we will handle critical errors. */
  FUNC0(SEM_FAILCRITICALERRORS | SEM_NOGPFAULTERRORBOX |
               SEM_NOOPENFILEERRORBOX);

  /* Tell the CRT to not exit the application when an invalid parameter is
   * passed. The main issue is that invalid FDs will trigger this behavior.
   */
#if !defined(__MINGW32__) || __MSVCRT_VERSION__ >= 0x800
  FUNC2(uv__crt_invalid_parameter_handler);
#endif

  /* We also need to setup our debug report handler because some CRT
   * functions (eg _get_osfhandle) raise an assert when called with invalid
   * FDs even though they return the proper error code in the release build.
   */
#if defined(_DEBUG) && (defined(_MSC_VER) || defined(__MINGW64_VERSION_MAJOR))
  _CrtSetReportHook(uv__crt_dbg_report_handler);
#endif

  /* Initialize tracking of all uv loops */
  FUNC4();

  /* Fetch winapi function pointers. This must be done first because other
   * initialization code might need these function pointers to be loaded.
   */
  FUNC9();

  /* Initialize winsock */
  FUNC10();

  /* Initialize FS */
  FUNC7();

  /* Initialize signal stuff */
  FUNC8();

  /* Initialize console */
  FUNC6();

  /* Initialize utilities */
  FUNC5();

  /* Initialize system wakeup detection */
  FUNC3();
}