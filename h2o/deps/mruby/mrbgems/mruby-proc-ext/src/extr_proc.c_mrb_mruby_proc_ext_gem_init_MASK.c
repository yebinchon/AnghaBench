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
struct TYPE_5__ {struct RClass* kernel_module; struct RClass* proc_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_kernel_proc ; 
 int /*<<< orphan*/  mrb_proc_inspect ; 
 int /*<<< orphan*/  mrb_proc_lambda ; 
 int /*<<< orphan*/  mrb_proc_parameters ; 
 int /*<<< orphan*/  mrb_proc_source_location ; 

void
FUNC3(mrb_state* mrb)
{
  struct RClass *p = mrb->proc_class;
  FUNC2(mrb, p, "lambda?",         mrb_proc_lambda,          FUNC0());
  FUNC2(mrb, p, "source_location", mrb_proc_source_location, FUNC0());
  FUNC2(mrb, p, "to_s",            mrb_proc_inspect,         FUNC0());
  FUNC2(mrb, p, "inspect",         mrb_proc_inspect,         FUNC0());
  FUNC2(mrb, p, "parameters",      mrb_proc_parameters,      FUNC0());

  FUNC1(mrb, mrb->kernel_module, "proc", mrb_kernel_proc, FUNC0());
  FUNC2(mrb, mrb->kernel_module,       "proc", mrb_kernel_proc, FUNC0());
}