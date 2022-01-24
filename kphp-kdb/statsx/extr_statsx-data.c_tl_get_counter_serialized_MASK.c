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
struct counter {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_MAYBE_FALSE ; 
 int /*<<< orphan*/  TL_MAYBE_TRUE ; 
 struct counter* FUNC0 (long long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct counter*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (long long counter_id, int version, int mode) {
  struct counter *C = FUNC0 (counter_id, version, 1);
  if (!C) { 
    FUNC2 (TL_MAYBE_FALSE);
    return 0;
  }
  if (C->type == -2) { return -2; }
  FUNC2 (TL_MAYBE_TRUE);
  FUNC1 (C, mode);
  return 0;
}