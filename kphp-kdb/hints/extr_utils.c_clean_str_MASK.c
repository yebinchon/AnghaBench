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
 scalar_t__ MAX_NAME_SIZE ; 
 char* prep_buf ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

char *FUNC2 (char *x) {
  if (FUNC0 (x) >= MAX_NAME_SIZE) {
    return x;
  }

  char *s = prep_buf;
  int skip;

  while (*x != 0) {
    skip = !FUNC1 (x, "amp+", 4) ||
           !FUNC1 (x, "gt+", 3) ||
           !FUNC1 (x, "lt+", 3) ||
           !FUNC1 (x, "quot+", 5) ||
           !FUNC1 (x, "ft+", 3) ||
           !FUNC1 (x, "feat+", 5) ||
           (((x[0] == '1' && x[1] == '9') || (x[0] == '2' && x[1] == '0')) && ('0' <= x[2] && x[2] <= '9') && ('0' <= x[3] && x[3] <= '9') && x[4] == '+') ||
           !FUNC1 (x, "092+", 4) ||
           !FUNC1 (x, "33+", 3) ||
           !FUNC1 (x, "34+", 3) ||
           !FUNC1 (x, "36+", 3) ||
           !FUNC1 (x, "39+", 3) ||
           !FUNC1 (x, "60+", 3) ||
           !FUNC1 (x, "62+", 3) ||
           !FUNC1 (x, "8232+", 5) ||
           !FUNC1 (x, "8233+", 5);
    do {
      *s = *x;
      if (!skip) {
        s++;
      }
    } while (*x++ != '+');
  }
  *s = 0;

  return prep_buf;
}