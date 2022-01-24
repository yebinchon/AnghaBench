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
struct gather {int* extra; scalar_t__ not_sent_num; scalar_t__ timeouted_num; } ;

/* Variables and functions */
 int TL_BOOL_STAT ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct gather*) ; 
 scalar_t__ FUNC2 (struct gather*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5 (struct gather *G) {
  int *extra = G->extra;
  if (FUNC2 (G) >= 0) {
    extra[2] += G->timeouted_num + G->not_sent_num;
    FUNC4 (TL_BOOL_STAT);
    FUNC4 (extra[0]);
    FUNC4 (extra[1]);
    FUNC4 (extra[2]);
    FUNC3 ();
  }
  FUNC0 (extra);
  FUNC1 (G);
}