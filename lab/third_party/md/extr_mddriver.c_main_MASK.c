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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int argc, char *argv[])
{
  int i;

  if (argc > 1) {
    for (i = 1; i < argc; i++) {
      if (argv[i][0] == '-' && argv[i][1] == 's')
        FUNC2(argv[i] + 2);
      else if (FUNC5(argv[i], "-t") == 0)
        FUNC4();
      else if (FUNC5(argv[i], "-x") == 0)
        FUNC3();
      else
        FUNC0(argv[i]);
    }
  } else {
    FUNC1();
  }

  return (0);
}