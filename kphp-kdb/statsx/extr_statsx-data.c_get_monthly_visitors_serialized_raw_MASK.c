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
struct counter {int type; struct counter* prev; int /*<<< orphan*/  last_month_unique_visitors; int /*<<< orphan*/  created_at; } ;

/* Variables and functions */
 int COUNTER_TYPE_MONTH ; 
 struct counter* FUNC0 (long long,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (long long,int /*<<< orphan*/ ,int) ; 

int FUNC4 (char *buffer, long long counter_id) {
  if (FUNC3 (counter_id, 0, 1) == -2) {
    return -2;
  }
  int *ptr = (int *)buffer;
  struct counter *C = FUNC0 (counter_id, 0);
  int first = 1;
  while (C) {
    //fprintf (stderr, ".%d %d\n", C->type & COUNTER_TYPE_MONTH, C->last_month_unique_visitors);
    if (first && !(C->type & COUNTER_TYPE_MONTH) && C->last_month_unique_visitors >= 0) {
      int m = FUNC1 (C->created_at);
      int y = FUNC2 (C->created_at);
      m ++;
      *(ptr ++) = y * 100 + m;
      *(ptr ++) = C->last_month_unique_visitors;
      first = 0;
    }
    if ((C->type & COUNTER_TYPE_MONTH) && C->last_month_unique_visitors >= 0) {
      if (first) {
        int m = FUNC1 (C->created_at);
        int y = FUNC2 (C->created_at);
        m ++;
        *(ptr ++) = y * 100 + m;
        *(ptr ++) = 0;
        first = 0;
      }
      int m = FUNC1 (C->created_at);
      int y = FUNC2 (C->created_at);
      //m--;
      if (!m) {
        m = 12;
        y--;
      }
      *(ptr ++) = y * 100 + m;
      *(ptr ++) = C->last_month_unique_visitors;
      //fprintf (stderr, "%d\n", C->created_at);
    }   
    //fprintf (stderr, "%d,%d,%d\n", C->created_at, C->last_month_unique_visitors, C->type & COUNTER_TYPE_MONTH8);
    C = C->prev;
  }
  return ((char *)ptr) - buffer;
}