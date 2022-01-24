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
 int /*<<< orphan*/  _CRTDBG_MODE_DEBUG ; 
 int /*<<< orphan*/  _CRT_ASSERT ; 
 int /*<<< orphan*/  _CRT_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  _O_BINARY ; 
 int /*<<< orphan*/  _fmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  executable_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(int argc, char **argv) {
  /* Disable the "application crashed" popup. */
  FUNC0(SEM_FAILCRITICALERRORS | SEM_NOGPFAULTERRORBOX |
      SEM_NOOPENFILEERRORBOX);
#if !defined(__MINGW32__)
  FUNC1(_CRT_ASSERT, _CRTDBG_MODE_DEBUG);
  FUNC1(_CRT_ERROR, _CRTDBG_MODE_DEBUG);
#endif

  FUNC3(0, _O_BINARY);
  FUNC3(1, _O_BINARY);
  FUNC3(2, _O_BINARY);

#ifdef _MSC_VER
  _set_fmode(_O_BINARY);
#else
  _fmode = _O_BINARY;
#endif

  /* Disable stdio output buffering. */
  FUNC4(stdout, NULL, _IONBF, 0);
  FUNC4(stderr, NULL, _IONBF, 0);

  FUNC5(executable_path, argv[0]);

  return 0;
}