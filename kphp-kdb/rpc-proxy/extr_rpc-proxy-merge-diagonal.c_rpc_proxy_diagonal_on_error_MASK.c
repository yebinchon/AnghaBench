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
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (struct gather*) ; 
 int /*<<< orphan*/  FUNC3 (struct gather*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9 (struct gather *G, int num) {
  int error_code = FUNC5 ();
  if (FUNC0 (error_code)) {
    if (FUNC2 (G) >= 0) {
      FUNC8 (CQ->h);
      FUNC4 (FUNC6 (), 1);
      FUNC7 ();
    }
    FUNC1 (G->extra);
    FUNC3 (G);
  } else {
    int *extra = G->extra;
    extra[2] ++;
  }
}