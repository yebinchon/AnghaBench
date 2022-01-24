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
struct rnews_gather_extra {scalar_t__ type_mask; scalar_t__ date; scalar_t__ end_date; scalar_t__ id; scalar_t__ t; scalar_t__ timestamp; } ;
struct gather {struct rnews_gather_extra* extra; } ;

/* Variables and functions */
 scalar_t__* Q ; 
 int* QN ; 
 int /*<<< orphan*/  R ; 
 scalar_t__ R_common_len ; 
 int* Rfirst ; 
 scalar_t__* Rlen ; 
 scalar_t__ TL_NEWS_GET_RAW_UPDATES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3 (struct gather *G, int num) {
  if (Rlen[num] + R_common_len <= 0 ) {
    return -1;
  }
  struct rnews_gather_extra *extra = G->extra;
  FUNC1 (TL_NEWS_GET_RAW_UPDATES);  
  FUNC1 (extra->type_mask);
  FUNC1 (extra->date);
  FUNC1 (extra->end_date);
  FUNC1 (extra->id);
  FUNC1 (extra->t);
  FUNC1 (extra->timestamp);
  FUNC1 (Rlen[num] + R_common_len);
  FUNC2 (R, R_common_len * 4);
  int x = Rfirst[num];
  int i;
  for (i = 0; i < Rlen[num]; i++) {
    FUNC0 (x >= 0);
    FUNC1 (Q[2 * x + 0]);
    FUNC1 (Q[2 * x + 1]);
    x = QN[x];
  }
  FUNC0 (x == -1);
  return 0;
}