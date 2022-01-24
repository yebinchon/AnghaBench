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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  exit_on_file_body_error ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  http_port ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int memory_repairing ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int test_mode ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC9 (int argc, char *argv[]) {
  int i;
  while ((i = FUNC3 (argc, argv, "1H:mtuv")) != -1) {
    switch (i) {
      case 'H':
        http_port = FUNC0 (optarg);
      break;
      case 'm':
        memory_repairing = 1;
      break;
      case 't':
        test_mode = 1;
      break;
      case 'u':
        username = optarg;
      break;
      case 'v':
        verbosity++;
        break;
      case '1':
        exit_on_file_body_error = 0;
        break;
    }
  }
  if (argc < optind + 2) {
    FUNC8 ();
    return 1;
  }

  if (FUNC1 (username) < 0) {
    FUNC4 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC2 (1);
  }

  if (memory_repairing) {
    if (FUNC6 (argv[optind], argv[optind+1]) < 0) {
      FUNC7 (argv[optind+1]);
      return 1;
    }
    return 0;
  }

  FUNC5 (argv[optind], argv[optind+1]);
  return 0;
}