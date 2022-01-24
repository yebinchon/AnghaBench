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
struct counter {int valid_until; unsigned long long mask_subcnt; int* subcnt; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static char *FUNC2 (char *ptr, struct counter *C) {
  /* 
     don't output broken stats (dirty hack)
     php: mktime (12, 0, 0, 2, 2, 2011) == 1296637200
          Feb 02 2011, 12:00
  */
  if (C->valid_until < 1296637200) {
    ptr += FUNC1 (ptr, "s:5:\"extra\";a:0:{}");
    return ptr;
  }
  int num = FUNC0(C->mask_subcnt);
  unsigned long long u = 1;
  int i, j;
  ptr += FUNC1 (ptr, "s:5:\"extra\";a:%d:{", num);
  for (i = 0, j = 0; i < 64; i++, u <<= 1) 
    if (u & C->mask_subcnt) {
      ptr += FUNC1 (ptr, "i:%d;i:%d;", i, C->subcnt[j++]);
    }
  *ptr++ = '}';
  return ptr;
}