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
struct tl_list_sum {int /*<<< orphan*/  id_ints; int /*<<< orphan*/  has_weights; int /*<<< orphan*/  count; scalar_t__ arr; int /*<<< orphan*/  mode; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;
typedef  int /*<<< orphan*/  array_object_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  TL_LONG ; 
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 

int FUNC3 (struct tl_act_extra *extra) {
  struct tl_list_sum *e = (void *)(extra->extra);
  long long res = FUNC0 (e->list_id, e->mode, (array_object_id_t *)e->arr, e->count, e->has_weights, e->id_ints);
  if (res == -2) {
    return -2;
  }
  if (res < 0) {
    return res;
  }
  FUNC1 (TL_LONG);
  FUNC2 (res);
  return 0;
}