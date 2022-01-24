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
struct statsx_gather_extra {int* subcnt; int valid_until; } ;

/* Variables and functions */
 int MAX_SUBCOUNTER ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static char *FUNC2 (char *ptr, struct statsx_gather_extra *C) {
  /* 
     don't output broken stats (dirty hack)
     php: mktime (12, 0, 0, 2, 2, 2011) == 1296637200
          Feb 02 2011, 12:00
  */
  int num = FUNC0 (C->subcnt, MAX_SUBCOUNTER);
  if (!num) {
    return ptr;
  }
  if (C->valid_until < 1296637200) {
    ptr += FUNC1 (ptr, "s:5:\"extra\";a:0:{}");
    return ptr;
  }
  int i;
  ptr += FUNC1 (ptr, "s:5:\"extra\";a:%d:{", num);
  for (i = 0; i < MAX_SUBCOUNTER; i++) 
    if (C->subcnt[i]) {
      ptr += FUNC1 (ptr, "i:%d;i:%d;", i, C->subcnt[i]);
    }
  *ptr++ = '}';
  return ptr;
}