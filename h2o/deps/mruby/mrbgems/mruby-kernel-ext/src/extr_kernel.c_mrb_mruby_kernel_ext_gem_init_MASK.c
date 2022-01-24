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
struct TYPE_5__ {struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_f_array ; 
 int /*<<< orphan*/  mrb_f_caller ; 
 int /*<<< orphan*/  mrb_f_float ; 
 int /*<<< orphan*/  mrb_f_hash ; 
 int /*<<< orphan*/  mrb_f_integer ; 
 int /*<<< orphan*/  mrb_f_itself ; 
 int /*<<< orphan*/  mrb_f_method ; 
 int /*<<< orphan*/  mrb_f_raise ; 
 int /*<<< orphan*/  mrb_f_string ; 

void
FUNC6(mrb_state *mrb)
{
  struct RClass *krn = mrb->kernel_module;

  FUNC5(mrb, krn, "fail", mrb_f_raise, FUNC2(2));
  FUNC5(mrb, krn, "caller", mrb_f_caller, FUNC2(2));
  FUNC4(mrb, krn, "__method__", mrb_f_method, FUNC1());
  FUNC5(mrb, krn, "Integer", mrb_f_integer, FUNC0());
#ifndef MRB_WITHOUT_FLOAT
  FUNC5(mrb, krn, "Float", mrb_f_float, FUNC3(1));
#endif
  FUNC5(mrb, krn, "String", mrb_f_string, FUNC3(1));
  FUNC5(mrb, krn, "Array", mrb_f_array, FUNC3(1));
  FUNC5(mrb, krn, "Hash", mrb_f_hash, FUNC3(1));
  FUNC5(mrb, krn, "itself", mrb_f_itself, FUNC1());
}