#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct RClass* FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_system ; 
 int /*<<< orphan*/  test_win_p ; 

void FUNC4(mrb_state *mrb)
{
  struct RClass *t;

  t = FUNC2(mrb, "FileStatTest", mrb->object_class);
  FUNC3(mrb, t, "system", test_system, FUNC1(1));
  FUNC3(mrb, t, "win?", test_win_p, FUNC0());
}