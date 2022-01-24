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
 scalar_t__ Dirs ; 
 int dirs ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

int FUNC2 (char *buffer) {
  int i;
  char *p = buffer;
  p += FUNC1 (p, "a:%d:{", dirs);
  for (i = 0; i < dirs; i++) {
    p += FUNC1 (p, "i:%d;", i);
    p += FUNC0 (p, Dirs + i);
  }
  p += FUNC1 (p, "}");
  return 0;
}