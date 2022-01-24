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
struct TYPE_4__ {struct RClass* module_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_mod_module_exec ; 
 int /*<<< orphan*/  mrb_mod_name ; 
 int /*<<< orphan*/  mrb_mod_singleton_class_p ; 

void
FUNC4(mrb_state *mrb)
{
  struct RClass *mod = mrb->module_class;

  FUNC3(mrb, mod, "name", mrb_mod_name, FUNC2());
  FUNC3(mrb, mod, "singleton_class?", mrb_mod_singleton_class_p, FUNC2());
  FUNC3(mrb, mod, "module_exec", mrb_mod_module_exec, FUNC0()|FUNC1());
  FUNC3(mrb, mod, "class_exec", mrb_mod_module_exec, FUNC0()|FUNC1());
}