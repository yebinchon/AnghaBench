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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC3 (scalar_t__) ; 

int FUNC4(int argc, char* argv[]) {
  int num_errors = 0;
  errno = 0;

  for (int i = 1; i < argc; ++i) {
    char* p = FUNC2(argv[i], NULL);
    if (p == NULL) {
      FUNC0(stderr, "Error resolving path '%s', error was: '%s'\n",
              argv[i], FUNC3(errno));
      errno = 0;
      ++num_errors;
    } else {
      FUNC0(stdout, "%s\n", p);
      FUNC1(p);
    }
  }

  return num_errors == 0 ? EXIT_SUCCESS : EXIT_FAILURE;
}