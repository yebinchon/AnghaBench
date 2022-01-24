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
struct gather {int* extra; } ;
struct TYPE_2__ {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 TYPE_1__* CQ ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct gather*) ; 
 int /*<<< orphan*/  FUNC2 (struct gather*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 

void FUNC9 (struct gather *G, int num) {
  int error_code = FUNC4 ();
  if (FUNC0 (error_code)) {
    if (FUNC1 (G) >= 0) {
      FUNC7 (CQ->h);
      FUNC3 (FUNC5 (), 1);
      FUNC6 ();
    }
    int *r = G->extra;
    FUNC8 (r, 4 * r[0] + 12);
    FUNC2 (G);
  }
}