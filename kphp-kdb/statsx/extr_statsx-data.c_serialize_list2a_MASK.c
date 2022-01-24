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

__attribute__((used)) static char *FUNC2 (char *ptr, const char *name, int *list, int num) {
  ptr += FUNC0 (ptr, "s:%ld:\"%s\";a:%d:{", (long) FUNC1 (name), name, num);
  int i;
  for (i = 0; i < 2*num; i++) {
    static char t[4];
    t[0] = (char)((list[i]>>16) & 0xff);
    t[1] = (char)((list[i]>>8) & 0xff);
    t[2] = (char)(list[i] & 0xff);
    t[3] = 0;
    ptr += (i&1) ? FUNC0 (ptr, "i:%d;", list[i]) : FUNC0(ptr, "s:%d:\"%s\";", (int)FUNC1 (t), t);
  }
  *ptr++ = '}';
  return ptr;
}