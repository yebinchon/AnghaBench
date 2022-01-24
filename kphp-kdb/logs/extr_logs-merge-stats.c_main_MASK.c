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
 scalar_t__ MAX_FN ; 
 size_t ansI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ engineF ; 
 scalar_t__ engineN ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ ** f ; 
 int /*<<< orphan*/ * FUNC6 (void*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* optarg ; 
 int optind ; 
 void* out_name ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* stat_name ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 () ; 
 char* username ; 

int FUNC12 (int argc, char *argv[]) {
  int i;

  FUNC4 ();
  progname = argv[0];

  if (argc == 1) {
    FUNC11();
    return 2;
  }

  while ((i = FUNC8 (argc, argv, "hF:N:o:u:")) != -1) {
    switch (i) {
    case 'h':
      FUNC11 ();
      return 2;
    case 'F':
      engineF = FUNC1 (optarg);
      break;
    case 'N':
      engineN = FUNC1 (optarg);
      break;
    case 'o':
      out_name = optarg;
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (argc != optind + 1) {
    FUNC11();
    return 2;
  }
  stat_name = argv[optind];

  if (FUNC2 (username) < 0) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC5 (1);
  }

  FUNC0 (engineN > engineF && engineF >= 0);
  ansI = engineN + 1;

  FUNC0 (engineN + 1 < MAX_FN);

  f[ansI] = FUNC6 (out_name, "w");
  FUNC0 (f[ansI] != NULL);

  FUNC9();
  FUNC10();
  FUNC3();

  return 0;
}