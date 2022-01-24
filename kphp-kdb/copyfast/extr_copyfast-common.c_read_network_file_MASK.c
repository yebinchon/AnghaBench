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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_RULES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * network ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int rules_num ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 

int FUNC6 (char *filename) {
  FILE *f = FUNC3 (filename, "rt");
  if (!f) {
    FUNC4 (stderr, "can not open network file (error %m)\n");
    return 0;
  }
  char buf[256];
  while (!FUNC1 (f)) {
    if (rules_num >= MAX_RULES) {
      FUNC0 (f);
      return rules_num;
    }
    FUNC2 (buf, 255, f);
    rules_num += FUNC5(buf, &network[rules_num]);
  }
  if (verbosity) {
    FUNC4 (stderr, "Read %d rules from network description file\n", rules_num);
  }
  FUNC0 (f);
  return rules_num;
}