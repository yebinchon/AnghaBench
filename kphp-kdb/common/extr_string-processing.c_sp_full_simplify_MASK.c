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
 char FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char const*) ; 

char *FUNC7 (const char *s) {
  int l = FUNC6 (s);
  char *t = FUNC5 (l);
  if (t != 0) {
    int nl = 0, i;
    for (i = 0; i < l; i++) {
      char c = FUNC3 (FUNC2 (s, &i));
      if (c != 0) {
        t[nl++] = FUNC1 (c);
      }
    }
    t[nl] = 0;

    char *new_t = FUNC4 (nl);
    FUNC0 (t == new_t);
  }

  return t;
}