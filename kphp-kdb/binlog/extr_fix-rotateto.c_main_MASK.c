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
 int MAX_CONNECTIONS ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int maxconn ; 
 char* optarg ; 
 int optind ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC12 (int argc, char *argv[]) {
  int i;
  static int keep_bad_dest_file = 0;
  if (FUNC6 ()) {
    maxconn = 10;
  }
  FUNC9 ();
  while ((i = FUNC5 (argc, argv, "c:hku:v")) != -1) {
    switch (i) {
    case 'c':
      maxconn = FUNC0 (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
      	maxconn = MAX_CONNECTIONS;
      }
    break;
    case 'h':
      FUNC11 ();
    break;
    case 'k':
      keep_bad_dest_file = 1;
      break;
    case 'u':
      username = optarg;
    break;
    case 'v':
      verbosity++;
    break;
    default:
      FUNC4 (stderr, "Unimplemented option %c\n", i);
      FUNC2 (2);
    break;
    }
  }

  if (optind + 3 != argc) {
    FUNC11 ();
  }

  if (FUNC8 (maxconn + 16) < 0) {
    FUNC7 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC2 (1);
  }

  if (FUNC1 (username) < 0) {
    FUNC7 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC2 (1);
  }

  if (FUNC3 (argv[optind], argv[optind+1], argv[optind+2]) < 0) {
    if (!keep_bad_dest_file) {
      if (!FUNC10 (argv[optind+2])) {
        FUNC7 ("Bad destination file '%s' was succesfully deleted.\n", argv[optind+2]);
      }
    }
    return 1;
  }

  return 0;
}