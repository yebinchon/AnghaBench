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
struct tl_sublist_delete {int /*<<< orphan*/  and_mask; int /*<<< orphan*/  xor_mask; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_BOOL_FALSE ; 
 int /*<<< orphan*/  TL_BOOL_TRUE ; 
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (struct tl_act_extra *extra) {
  struct tl_sublist_delete *e = (void *)(extra->extra);
  //vkprintf (1, "delete_sublist " idout " xor_mask = %d, and_mask = %d\n", out_list_id (e->list_id), e->xor_mask, e->and_mask);
  long long res = FUNC0 (e->list_id, e->xor_mask, e->and_mask);
  if (res == -2) { return -2; }
  FUNC1 (res <= 0 ? TL_BOOL_FALSE : TL_BOOL_TRUE);
  return 0;
}