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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 struct RClass* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  run_ensure ; 
 int /*<<< orphan*/  run_protect ; 
 int /*<<< orphan*/  run_rescue ; 
 int /*<<< orphan*/  run_rescue_exceptions ; 

void
FUNC5(mrb_state *mrb)
{
  struct RClass *cls;

  cls = FUNC3(mrb, "ExceptionTest", mrb->object_class);
  FUNC4(mrb, cls, "mrb_protect", run_protect, FUNC1() | FUNC0());
  FUNC4(mrb, cls, "mrb_ensure", run_ensure, FUNC2(2));
  FUNC4(mrb, cls, "mrb_rescue", run_rescue, FUNC2(2));
  FUNC4(mrb, cls, "mrb_rescue_exceptions", run_rescue_exceptions, FUNC2(2));
}