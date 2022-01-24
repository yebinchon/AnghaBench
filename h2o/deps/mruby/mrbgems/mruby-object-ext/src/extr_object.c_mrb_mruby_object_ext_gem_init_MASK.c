#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_4__ {struct RClass* kernel_module; struct RClass* nil_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_obj_instance_exec ; 
 int /*<<< orphan*/  nil_to_a ; 
 int /*<<< orphan*/  nil_to_f ; 
 int /*<<< orphan*/  nil_to_i ; 

void
FUNC4(mrb_state* mrb)
{
  struct RClass * n = mrb->nil_class;

  FUNC3(mrb, n, "to_a", nil_to_a,       FUNC2());
#ifndef MRB_WITHOUT_FLOAT
  FUNC3(mrb, n, "to_f", nil_to_f,       FUNC2());
#endif
  FUNC3(mrb, n, "to_i", nil_to_i,       FUNC2());

  FUNC3(mrb, mrb->kernel_module, "instance_exec", mrb_obj_instance_exec, FUNC0() | FUNC1());
}