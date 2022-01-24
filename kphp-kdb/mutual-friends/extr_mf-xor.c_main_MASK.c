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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* username ; 

int FUNC11 (int argc, char *argv[]) {
  int i;

  FUNC9 ();
  progname = argv[0];

  if (argc == 1) {
    FUNC10();
    return 2;
  }

  while ((i = FUNC5 (argc, argv, "hu:")) != -1) {
    switch (i) {
    case 'h':
      FUNC10 ();
      return 2;
    case 'u':
      username = optarg;
      break;
    }
  }
  if (argc != optind + 2) {
    FUNC10();
    return 2;
  }

  if (FUNC0 (username) < 0) {
    FUNC3 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC1 (1);
  }

  FUNC6 (3);

  FUNC7 (0, argv[optind], 0);
  FUNC7 (1, argv[optind + 1], 0);
  fd[2] = 1;

  FUNC8();

  FUNC2();
  FUNC4 (fd[2]);
//  assert (fsync (fd[2]) >= 0);  // fails when stdout is a pipe

  return 0;
}