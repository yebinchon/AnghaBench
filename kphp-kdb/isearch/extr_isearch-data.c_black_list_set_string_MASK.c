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
 int /*<<< orphan*/  black_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int verbosity ; 

void FUNC5 (char *buff, int f) {
  if (verbosity > 2) {
    FUNC0 (stderr, "set %d string <%s>\n", f, buff);
  }
  int size = FUNC2 (buff);
  char *s = buff;
  int i;
  char t;
  for (i = 0; i <= size; i++) {
    if (buff[i] == '\t' || buff[i] == 0) {
      t = buff[i];
      buff[i] = 0;
      if (*s) {
        if (f) {
          FUNC4 (black_list, FUNC1 (s, 1));
        } else {
          FUNC3 (&black_list, FUNC1 (s, 1));
        }
      }
      if (verbosity > 2) {
        FUNC0 (stderr, " -- <%s>\n", s);
      }
      s = buff + i + 1;
      buff[i] = t;
    }
  }
}