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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_bool
FUNC3(mrb_state *mrb, mrb_value a, mrb_value b)
{
  mrb_value r = FUNC2(mrb, a, "<=>", 1, b); /* compare result */
  /* output :a < b => -1, a = b =>  0, a > b => +1 */

  if (FUNC1(r)) {
    mrb_int c = FUNC0(r);
    if (c == 0 || c == -1) return TRUE;
  }

  return FALSE;
}