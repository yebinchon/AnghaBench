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
 char* FUNC0 (int) ; 

__attribute__((used)) static char *FUNC1 (int len) {
#ifdef	DEBUG_EXACT_STRINGS
  char *res = zmalloc (len + 1 + 8) + 4;
  *((int *) (res - 4)) = 0xdeadbeef;
  *((int *) (res + len + 1)) = 0xbeda3ae6;
#else
  char *res = FUNC0 (len + 1);
#endif
  res[len] = 0;
  return res;
}