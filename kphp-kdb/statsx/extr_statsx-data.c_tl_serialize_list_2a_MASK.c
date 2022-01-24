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
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2 (int *ptr) {
  int e = ptr ? ptr[-1] : 0;
  FUNC0 (e);
  int i;
  for (i = 0; i < e; i++) {
    static char t[4];
    t[0] = (char)((ptr[2 * i]>>16) & 0xff);
    t[1] = (char)((ptr[2 * i]>>8) & 0xff);
    t[2] = (char)(ptr[2 * i] & 0xff);
    t[3] = 0;
    FUNC1 (t);
    FUNC0 (ptr[2 * i + 1]);
  }
}