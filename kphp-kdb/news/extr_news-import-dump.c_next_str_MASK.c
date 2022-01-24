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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* rend ; 
 int* rptr ; 

int FUNC2 (char *s, int max_len) {
  int i = 0;
  FUNC1 ();
  if (rptr == rend) {
    return -1;
  }
  while (i < max_len && (*rptr > 32) ) {
    s[i++] = *(rptr++);
    if (rptr == rend) {
      FUNC0 ();
      if (rptr == rend) {
        break;
      }
    }
  }
  s[i++] = 0;
  return 0;
}