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
 scalar_t__ TL_BOOL_STAT ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 

void FUNC2 (struct gather *G, int num) {
  int *extra = G->extra;
  if (FUNC0 () != TL_BOOL_STAT) {
    extra[2] ++;
    return;
  }
  if (FUNC1 () != 12) {
    extra[2] ++;
    return;
  }
  extra[0] += FUNC0 ();
  extra[1] += FUNC0 ();
  extra[2] += FUNC0 ();
}