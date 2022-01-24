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
struct tl_list_entry_incr_or_create {int /*<<< orphan*/  value; int /*<<< orphan*/  flags; int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_MAYBE_FALSE ; 
 int /*<<< orphan*/  TL_MAYBE_TRUE ; 
 scalar_t__ WaitAioArrPos ; 
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 

int FUNC3 (struct tl_act_extra *extra) {
  struct tl_list_entry_incr_or_create *e = (void *)extra->extra;
  long long res = FUNC0 (e->list_id, e->object_id, e->flags, e->value, 0);
  if (res == (-1ll << 63) && WaitAioArrPos) { return -2; }
  if (res == (-1ll << 63)) {
    FUNC1 (TL_MAYBE_FALSE);
  } else {
    FUNC1 (TL_MAYBE_TRUE);
    FUNC2 (res);
  }
  return 0;
}