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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC10 (int argc, char *argv[]) {
  int i;
  FUNC8 ();
  while ((i = FUNC2 (argc, argv, "hv")) != -1) {
    switch (i) {
    case 'h':
      FUNC9 ();
      return 2;
    case 'v':
      verbosity++;
      break;
    }
  }

  if (argc != optind + 1) {
    FUNC9 ();
  }
  
  char *prog_filename = argv[optind];

  FUNC6 ();
  FUNC3 ();
  char *a = FUNC5 (prog_filename);
  if (a == NULL) {
    FUNC7 ("icpl_readfile (\"%s\") fail.\n", prog_filename);
    FUNC0 (1);
  }

  if (FUNC4 (a) < 0) {
    FUNC1 (a);
    FUNC0 (1);
  }

  FUNC1 (a);
  return 0;
}