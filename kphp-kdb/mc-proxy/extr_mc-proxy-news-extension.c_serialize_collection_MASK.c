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
struct collection {int num; int* A; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,int,int,...) ; 

__attribute__((used)) static char *FUNC2 (char *ptr, int no, struct collection *C, int grouping, int need_owner, int total) {
  static char buff[32];
  int s, n, i;

  FUNC0 (C->num > 0);
  n = C->num;

  if (n == 1 && total <= 1) {
    if (!need_owner) {
      return ptr + FUNC1 (ptr, "i:%d;i:%d;", no, (int) C->A[0]);
    } else {
      s = FUNC1 (buff, "%d_%d", (int) (C->A[0] >> 32), (int) C->A[0]);
      return ptr + FUNC1 (ptr, "i:%d;s:%d:\"%s\";", no, s, buff);
    }
  }

  if (n > grouping) {
    n = grouping;
  }

  ptr += FUNC1 (ptr, "i:%d;a:%d:{i:0;i:%d;", no, n+1, total ? total : C->num);
  
  for (i = 0; i < n; i++) {
    if (!need_owner) {
      ptr += FUNC1 (ptr, "i:%d;i:%d;", i+1, (int) C->A[i]);
    } else {
      s = FUNC1 (buff, "%d_%d", (int) (C->A[i] >> 32), (int) C->A[i]);
      ptr += FUNC1 (ptr, "i:%d;s:%d:\"%s\";", i+1, s, buff);
    }
  }

  *ptr++ = '}';
  return ptr;
}