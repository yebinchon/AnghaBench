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
 int MAX_DIRS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3 (const char *paths, char *P[MAX_DIRS]) {
  char *s = FUNC1 (paths), *p;
  int n = 0;
  for (p = FUNC2 (s, ":"); p != NULL; p = FUNC2 (NULL, ":")) {
    if (n >= MAX_DIRS) {
      FUNC0 (s);
      return -1;
    }
    P[n++] = p;
  }
  return n;
}