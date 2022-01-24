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
struct news_gather_extra {int type_mask; int timestamp; int end_date; } ;
struct gather {struct news_gather_extra* extra; } ;

/* Variables and functions */
 int* Q ; 
 int* QN ; 
 int* Rfirst ; 
 int* Rlen ; 
 int TL_NEWS_GET_RAW_UPDATES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2 (struct gather *G, int num) {
  if (Rlen[num] <= 0) {
    return -1;
  }
  struct news_gather_extra *extra = G->extra;
  FUNC1 (TL_NEWS_GET_RAW_UPDATES);  
  FUNC1 (extra->type_mask);
  FUNC1 (extra->timestamp);
  FUNC1 (extra->end_date);
  FUNC1 (Rlen[num]);
  int x = Rfirst[num];
  int i;
  for (i = 0; i < Rlen[num]; i++) {
    FUNC0 (x >= 0);
    FUNC1 (Q[x]);
    x = QN[x];
  }
  FUNC0 (x == -1);
  return 0;
}