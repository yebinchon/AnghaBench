#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_7__ {struct RClass* module_class; struct RClass* kernel_module; int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  method_arity ; 
 int /*<<< orphan*/  method_call ; 
 int /*<<< orphan*/  method_eql ; 
 int /*<<< orphan*/  method_parameters ; 
 int /*<<< orphan*/  method_source_location ; 
 int /*<<< orphan*/  method_super_method ; 
 int /*<<< orphan*/  method_to_s ; 
 int /*<<< orphan*/  method_unbind ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,char*) ; 
 struct RClass* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_kernel_method ; 
 int /*<<< orphan*/  mrb_module_instance_method ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  unbound_method_bind ; 

void
FUNC7(mrb_state* mrb)
{
  struct RClass *unbound_method = FUNC4(mrb, "UnboundMethod", mrb->object_class);
  struct RClass *method = FUNC4(mrb, "Method", mrb->object_class);

  FUNC6(mrb, unbound_method, "new");
  FUNC5(mrb, unbound_method, "bind", unbound_method_bind, FUNC2(1));
  FUNC5(mrb, unbound_method, "super_method", method_super_method, FUNC1());
  FUNC5(mrb, unbound_method, "==", method_eql, FUNC2(1));
  FUNC3(mrb,  unbound_method, "eql?", "==");
  FUNC5(mrb, unbound_method, "to_s", method_to_s, FUNC1());
  FUNC5(mrb, unbound_method, "inspect", method_to_s, FUNC1());
  FUNC5(mrb, unbound_method, "arity", method_arity, FUNC1());
  FUNC5(mrb, unbound_method, "source_location", method_source_location, FUNC1());
  FUNC5(mrb, unbound_method, "parameters", method_parameters, FUNC1());

  FUNC6(mrb, method, "new");
  FUNC5(mrb, method, "==", method_eql, FUNC2(1));
  FUNC3(mrb,  method, "eql?", "==");
  FUNC5(mrb, method, "to_s", method_to_s, FUNC1());
  FUNC5(mrb, method, "inspect", method_to_s, FUNC1());
  FUNC5(mrb, method, "call", method_call, FUNC0());
  FUNC3(mrb,  method, "[]", "call");
  FUNC5(mrb, method, "unbind", method_unbind, FUNC1());
  FUNC5(mrb, method, "super_method", method_super_method, FUNC1());
  FUNC5(mrb, method, "arity", method_arity, FUNC1());
  FUNC5(mrb, method, "source_location", method_source_location, FUNC1());
  FUNC5(mrb, method, "parameters", method_parameters, FUNC1());

  FUNC5(mrb, mrb->kernel_module, "method", mrb_kernel_method, FUNC2(1));

  FUNC5(mrb, mrb->module_class, "instance_method", mrb_module_instance_method, FUNC2(1));
}