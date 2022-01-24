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
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(mrb_state *mrb, int posarg, const char *name, mrb_int len)
{
  if (posarg > 0) {
    FUNC1(mrb, E_ARGUMENT_ERROR, "named%S after unnumbered(%S)",
               FUNC2(mrb, (name), (len)), FUNC0(posarg));
  }
  if (posarg == -1) {
    FUNC1(mrb, E_ARGUMENT_ERROR, "named%S after numbered", FUNC2(mrb, (name), (len)));
  }
}