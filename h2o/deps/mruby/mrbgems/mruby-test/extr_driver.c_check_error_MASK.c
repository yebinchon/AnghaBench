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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(mrb_state *mrb)
{
  /* Error check */
  /* $ko_test and $kill_test should be 0 */
  mrb_value ko_test = FUNC2(mrb, FUNC3(mrb, "$ko_test"));
  mrb_value kill_test = FUNC2(mrb, FUNC3(mrb, "$kill_test"));

  return FUNC1(ko_test) && FUNC0(ko_test) == 0 && FUNC1(kill_test) && FUNC0(kill_test) == 0;
}