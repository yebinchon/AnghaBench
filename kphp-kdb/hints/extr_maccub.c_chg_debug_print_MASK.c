#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ treap ;
typedef  int* changes ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2 (changes x, FILE *f) {
  if ((long)(x) < 0) {
    long t = -(long)(x);
    FUNC0 (f, " [1] : %+ld\n", (t / 2) * (t & 1 ? +1 : -1));
  } else if (x) {
    if (x[0] < 0) {
      FUNC0 (f, "[%d] :", x[0]);
      FUNC1 (((treap *)(x))->root, f);
      FUNC0 (f, "\n");
//      fprintf (f, " [?] : LAZHA\n");
    } else {
      FUNC0 (f, " [%d] :", x[0]);
      int i;
      for (i = 1; i <= x[0]; i++) {
        FUNC0 (f, " %+d", (x[i] / 2) * (x[i] & 1 ? +1 : -1));
      }
      FUNC0 (f, "\n");
    }
  }
}