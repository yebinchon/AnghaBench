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
 int MAXH ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t ansI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int engineN ; 
 int exceptionsI ; 
 void* exceptions_name ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int friendsI ; 
 void* friends_name ; 
 int fsz ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t,void*,int) ; 
 void* optarg ; 
 int optind ; 
 void* out_name ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  stderr ; 
 int test_mode ; 
 scalar_t__ this_mod ; 
 int un ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int userN ; 
 char* username ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*,int) ; 

int FUNC15 (int argc, char *argv[]) {
  int i;

  FUNC0 ((MAXH & (MAXH - 1)) == 0);

  FUNC12();
  progname = argv[0];
//  fprintf (stderr, "%s\n", progname);

  if (argc == 1) {
    FUNC13();
    return 2;
  }

  while ((i = FUNC6 (argc, argv, "hU:E:T:F:B:to:u:")) != -1) {
    switch (i) {
    case 'h':
      FUNC13 ();
      return 2;
    case 'U':
      userN = FUNC1 (optarg);
      break;
    case 'E':
      engineN = FUNC1 (optarg);
      break;
    case 'T':
      this_mod = FUNC1 (optarg);
      break;
    case 'F':
      friends_name = optarg;
      break;
    case 'B':
      exceptions_name = optarg;
      break;
    case 't':
      test_mode = 1;
      break;
    case 'o':
      out_name = optarg;
      break;
    case 'u':
      username = optarg;
      break;
    }
  }
  if (argc != optind) {
    FUNC13();
    return 2;
  }

  if (FUNC2 (username) < 0) {
    FUNC5 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC3 (1);
  }

  FUNC0 (userN >= 0);
  FUNC0 (engineN >= 0);
  FUNC0 (this_mod >= 0);
  friendsI = engineN;
  exceptionsI = engineN + 1;
  ansI = engineN + 2;

  FUNC8 (engineN + 3);

  FUNC10 (ansI, out_name, 2);

  fsz = -1;
  FUNC14 (fd[ansI], &fsz, sizeof (long long));
  fsz = sizeof (long long);

  un = userN / engineN;
  FUNC7();
  FUNC11();

  FUNC4();

  FUNC0 (FUNC9 (fd[ansI], 0, SEEK_SET) == 0);
  FUNC14 (fd[ansI], &fsz, sizeof (long long));

  return 0;
}