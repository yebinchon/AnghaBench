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
struct counter {struct counter* prev; int /*<<< orphan*/  created_at; scalar_t__ views; } ;

/* Variables and functions */
 scalar_t__ Q_raw ; 
 struct counter* FUNC0 (long long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,long long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

int FUNC6 (char *buffer, long long counter_id) {
  if (FUNC4 (counter_id, 0, 1) == -2) {
    return -2;
  }
  if (Q_raw) {
    return FUNC2 (buffer, counter_id);
  }
  char *ptr = buffer;
  struct counter *C = FUNC0 (counter_id, 0);
  int r = 0;
  int current_month_views = 0;
  while (C) {
    //fprintf (stderr, ".%d %d\n", C->type & COUNTER_TYPE_MONTH, C->last_month_unique_visitors);
    current_month_views += C->views;
    if (!C->prev || FUNC1 (C->created_at) != FUNC1 (C->prev->created_at) || FUNC3 (C->created_at) != FUNC3 (C->prev->created_at)) {
      if (r) {
        ptr += FUNC5 (ptr, ",");
      } else {
        r = 1;
      }
      int m = FUNC1 (C->created_at);
      int y = FUNC3 (C->created_at);
      //m--;
      m ++;
      ptr += FUNC5 (ptr, "%d,%d,%d", current_month_views, m, y);
      current_month_views = 0;
      //fprintf (stderr, "%d\n", C->created_at);
    }   
    //fprintf (stderr, "%d,%d,%d\n", C->created_at, C->last_month_unique_visitors, C->type & COUNTER_TYPE_MONTH8);
    C = C->prev;
  }
  return ptr - buffer;
}