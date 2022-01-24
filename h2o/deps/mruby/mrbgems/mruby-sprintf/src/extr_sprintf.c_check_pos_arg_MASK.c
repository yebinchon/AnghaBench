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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC2(mrb_state *mrb, mrb_int posarg, mrb_int n)
{
  if (posarg > 0) {
    FUNC1(mrb, E_ARGUMENT_ERROR, "numbered(%S) after unnumbered(%S)",
               FUNC0(n), FUNC0(posarg));
  }
  if (posarg == -2) {
    FUNC1(mrb, E_ARGUMENT_ERROR, "numbered(%S) after named", FUNC0(n));
  }
  if (n < 1) {
    FUNC1(mrb, E_ARGUMENT_ERROR, "invalid index - %S$", FUNC0(n));
  }
}