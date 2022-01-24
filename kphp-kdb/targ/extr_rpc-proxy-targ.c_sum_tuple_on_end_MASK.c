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
 int /*<<< orphan*/  FUNC0 (struct gather*) ; 
 scalar_t__ FUNC1 (struct gather*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 

void FUNC6 (struct gather *G) {
  int *r = G->extra;
  if (FUNC1 (G) >= 0) {
    FUNC3 (r[1]);
    if (r[2] >= 0) {
      FUNC3 (r[2]);
    }
    FUNC4 (r + 3, r[0] * 4);
    FUNC2 ();
  }
  FUNC5 (r, 4 * r[0] + 12);
  FUNC0 (G);
}