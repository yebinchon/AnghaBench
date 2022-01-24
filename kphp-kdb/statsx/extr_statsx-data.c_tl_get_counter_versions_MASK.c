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
struct counter {struct counter* prev; int /*<<< orphan*/  created_at; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_MAYBE_FALSE ; 
 int /*<<< orphan*/  TL_MAYBE_TRUE ; 
 struct counter* FUNC0 (long long,int /*<<< orphan*/ ) ; 
 int FUNC1 (long long,int /*<<< orphan*/ ,int) ; 
 int* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (long long counter_id) {
  if (FUNC1 (counter_id, 0, 1) == -2) {
    return -2;
  }
  struct counter *C = FUNC0 (counter_id, 0);
  if (!C) {
    FUNC3 (TL_MAYBE_FALSE);
    return 0;
  }
  FUNC3 (TL_MAYBE_TRUE);
  int *count = FUNC2 (4);
  *count = 0;
  while (C) {
    FUNC3 (C->created_at);
    (*count) ++;
    C = C->prev;
  }
  return 0;
}