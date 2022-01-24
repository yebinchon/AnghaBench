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
struct tl_list_set_flags {int nand_mask; int or_mask; int /*<<< orphan*/  and_mask; int /*<<< orphan*/  xor_mask; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  TL_BOOL_FALSE ; 
 int /*<<< orphan*/  TL_BOOL_TRUE ; 
 long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2 (struct tl_act_extra *extra) {
  struct tl_list_set_flags *e = (void *)(extra->extra);
  long long res = FUNC0 (e->list_id, e->xor_mask, e->and_mask, ~(e->nand_mask | e->or_mask), e->or_mask);
  if (res == -2) { return -2; }
  FUNC1 (res <= 0 ? TL_BOOL_FALSE : TL_BOOL_TRUE);
  return 0;
}