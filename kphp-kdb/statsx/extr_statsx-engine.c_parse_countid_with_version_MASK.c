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
 int FUNC0 (char const*,char*,long long*,...) ; 
 scalar_t__ FUNC1 (char const*,char) ; 

int FUNC2(const char *s, long long *pcount_id, int *pver) {
  *pver = -1;
  if (FUNC1(s, '@') != 0) {
    return FUNC0(s, "%lld@%d", pcount_id, pver) == 2;
  }
  return FUNC0(s, "%lld", pcount_id) == 1;
}