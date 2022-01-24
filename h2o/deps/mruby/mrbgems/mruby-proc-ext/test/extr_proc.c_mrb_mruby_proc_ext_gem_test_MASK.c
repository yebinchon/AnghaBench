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
 int /*<<< orphan*/  cfunc_env_get ; 
 int /*<<< orphan*/  cfunc_without_env ; 
 struct RClass* FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_new_cfunc_with_env ; 

void FUNC4(mrb_state *mrb)
{
  struct RClass *cls;

  cls = FUNC2(mrb, "ProcExtTest", mrb->object_class);
  FUNC3(mrb, cls, "mrb_proc_new_cfunc_with_env", proc_new_cfunc_with_env, FUNC1(1));
  FUNC3(mrb, cls, "mrb_cfunc_env_get", cfunc_env_get, FUNC1(2));
  FUNC3(mrb, cls, "cfunc_without_env", cfunc_without_env, FUNC0());
}