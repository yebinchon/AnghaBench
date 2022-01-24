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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 void* FUNC3 (int) ; 

void *FUNC4 (void *p, int old_len, int new_len) {
  void *tmp = FUNC3 (new_len);
  FUNC0 (tmp);
  int t = old_len;
  if (old_len > new_len) {
    t = old_len;
  }
  FUNC1 (tmp, p, t);
  if (p) {
    FUNC2 (p, old_len);
  }
  return tmp;  
}