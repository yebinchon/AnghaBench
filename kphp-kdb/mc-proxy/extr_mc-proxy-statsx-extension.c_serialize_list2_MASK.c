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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,...) ; 
 scalar_t__ FUNC1 (char const*) ; 

char *FUNC2 (char *ptr, const char *name, int *list, int num) {
  int x = 0;
  while (x < num && list[2 * x + 1]) {
    x ++;
  }
  if (!x) {
    return ptr;
  }
  ptr += FUNC0 (ptr, "s:%ld:\"%s\";a:%d:{", (long) FUNC1 (name), name, x);
  int i;
  for (i = 0; i < 2*x; i++) {
    ptr += FUNC0 (ptr, "i:%d;", list[i]);
  }
  *ptr++ = '}';
  return ptr;
}