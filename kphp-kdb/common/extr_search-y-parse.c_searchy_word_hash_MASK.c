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
 unsigned long long FUNC0 (char const*,int) ; 

unsigned long long FUNC1 (const char *str, int len) {
  unsigned long long h = FUNC0 (str, len);
  h &= 0x7fffffffffffffffULL;
  if (*str != 0x1f) {
    h |= 0x8000000000000000ULL;
  }
  return h;
}