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
struct tl_list_entry_get_int {int offset; scalar_t__ is_long; int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/ * R ; 
 int /*<<< orphan*/  TL_MAYBE_FALSE ; 
 int /*<<< orphan*/  TL_MAYBE_TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 

int FUNC3 (struct tl_act_extra *extra) {
  struct tl_list_entry_get_int *e = (void *)(extra->extra);
  int res = FUNC0 (e->list_id, e->object_id, R);
  if (res == -2) { return -2; }
  if (res < 0) {    
    FUNC1 (TL_MAYBE_FALSE);
    return 0;
  }
  FUNC1 (TL_MAYBE_TRUE);
  if (e->is_long) {
    FUNC2 (*(long long *)(R + e->offset));
  } else {
    FUNC1 (R[e->offset]);
  }
  return 0;
}