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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,char**) ; 
 scalar_t__ FUNC3 (int,char**) ; 
 int FUNC4 (char*,char*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC6(int argc, char **argv) {
  if (FUNC3(argc, argv))
    return EXIT_FAILURE;

  switch (argc) {
  case 1: return FUNC5(1);
  case 2: return FUNC2(argc, argv);
  case 3: return FUNC4(argv[1], argv[2]);
  default:
    FUNC1(stderr, "Too many arguments.\n");
    FUNC0(stderr);
    return EXIT_FAILURE;
  }

  return EXIT_SUCCESS;
}