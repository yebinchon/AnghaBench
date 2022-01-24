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
struct gather {int* extra; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 

void FUNC2 (struct gather *G, int num) {
  int *r = G->extra;
  if (FUNC0 () != r[1]) {
    return;
  } else {
    if (r[2] < 0 || r[2] == FUNC0 ()) {
      if (FUNC1 () != r[0] * 4) { return; }
      int i;
      for (i = 0; i < r[0]; i++) {
        r[i + 3] += FUNC0 ();
      }
    }
  }
}