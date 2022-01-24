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
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 scalar_t__ EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value self)
{
  mrb_int i = EXIT_SUCCESS;

  FUNC1(mrb, "|i", &i);
  FUNC0((int)i);
  /* not reached */
  return FUNC2();
}