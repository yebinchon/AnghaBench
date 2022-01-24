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
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static int FUNC1 (char *s, char **parts) {
  int pn = 0;
  while (TRUE) {
    int end = 0;
    while (!end && *s && FUNC0 (*s)) {
      if (*s == '\t') {
        end = 1;
      }
      *s++ = 0;
    }
    if (!*s || pn == 5) {
      break;
    }
    parts[pn++] = s;
    while (*s && !FUNC0 (*s)) {
      s++;
    }
  }
  return (pn == 5) && (*s == 0);
}