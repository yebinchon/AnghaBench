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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  buff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ input_file ; 
 scalar_t__ optarg ; 
 int optind ; 
 scalar_t__ output_file ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int total_out ; 
 scalar_t__ verbosity ; 

int FUNC11 (int argc, char **argv) {
  int i;
  int skip_lines = 0;
  FUNC10 ();

  while ((i = FUNC6 (argc, argv, "i:o:vhs:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC7();
      return 2;
    case 'i':
      input_file = optarg;
      break;
    case 'o':
      output_file = optarg;
      break;
    case 's':
      skip_lines = FUNC1 (optarg);
      break;
    default:
      FUNC7 ();
      return 2;
    }
  }

  if (argc != optind || !input_file) {
    FUNC7();
    return 2;
  }

  if (output_file) {
    FUNC0 (FUNC5 (output_file, "wt", stdout));
  }

  FUNC0 (FUNC5 (input_file, "rt", stdin));
  for (i = 0; i < skip_lines; i++) {
    FUNC0 (FUNC3 (buff, 1000000, stdin));
  }
  
  FUNC8 ();
  FUNC9 ();
  FUNC2 (&root, -1);
  if (verbosity) {
    FUNC4 (stderr, "Total %d rules\n", total_out);
  }

  return 0;
}