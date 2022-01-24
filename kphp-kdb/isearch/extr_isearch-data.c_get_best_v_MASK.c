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
 int MAX_BEST ; 
 int MAX_BUFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t* best ; 
 int bestn ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ buff ; 
 scalar_t__* names ; 
 scalar_t__ names_buff ; 

int *FUNC2 (int need) {
  int *v = (int *)buff;
  v[0] = 0;

  int ignore_black_list = 0;
  if (need < 0) {
    need = -need;
    ignore_black_list = 1;
  }
  if (need > MAX_BEST) {
    need = MAX_BEST;
  }
  FUNC0 ((need + 1) * sizeof (int) < MAX_BUFF);

  int t;
  for (t = 0; t < bestn && need; t++) {
    if (ignore_black_list || !FUNC1 (names_buff + names[best[t]])) {
      v[++v[0]] = best[t];
      need--;
    }
  }
  return v;
}