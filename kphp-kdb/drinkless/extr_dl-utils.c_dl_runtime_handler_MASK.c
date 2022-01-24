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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LOG_CRITICAL ; 
 int /*<<< orphan*/  LOG_DEF ; 
 int /*<<< orphan*/  LOG_HISTORY ; 
 int /*<<< orphan*/  LOG_WARNINGS ; 
 int const SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC5 (const int sig) {
  //signal (sig, SIG_DFL);

  FUNC4 (stderr, "%s caught, terminating program\n", sig == SIGSEGV ? "SIGSEGV" : "SIGABRT");
  FUNC4 (stderr, "----------------- LOG BEGINS -----------------\n");
  FUNC1 (LOG_DEF, 0x7f);
  FUNC4 (stderr, "-----------------  HISTORY   -----------------\n");
  FUNC1 (LOG_HISTORY, 0x7f);
  FUNC4 (stderr, "-----------------  WARNINGS  -----------------\n");
  FUNC1 (LOG_WARNINGS, 0x7f);
  FUNC4 (stderr, "-----------------  CRITICAL  -----------------\n");
  FUNC1 (LOG_CRITICAL, 0x7f);
  FUNC4 (stderr, "----------------- LOG   ENDS -----------------\n");
  FUNC2();
  FUNC3();

  FUNC0 (EXIT_FAILURE);
}