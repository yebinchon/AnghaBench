#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_9__ {struct RClass* kernel_module; } ;
typedef  TYPE_1__ mrb_state ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MRB_INT_BIT ; 
 int /*<<< orphan*/  MRB_INT_MAX ; 
 int /*<<< orphan*/  MRB_INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_t_printstr ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(mrb_state *mrb, mrb_bool verbose)
{
  struct RClass *krn, *mrbtest;

  krn = mrb->kernel_module;
  FUNC2(mrb, krn, "__t_printstr__", mrb_t_printstr, FUNC0(1));

  mrbtest = FUNC3(mrb, "Mrbtest");

  FUNC1(mrb, mrbtest, "FIXNUM_MAX", FUNC4(MRB_INT_MAX));
  FUNC1(mrb, mrbtest, "FIXNUM_MIN", FUNC4(MRB_INT_MIN));
  FUNC1(mrb, mrbtest, "FIXNUM_BIT", FUNC4(MRB_INT_BIT));

#ifndef MRB_WITHOUT_FLOAT
#ifdef MRB_USE_FLOAT
  mrb_define_const(mrb, mrbtest, "FLOAT_TOLERANCE", mrb_float_value(mrb, 1e-6));
#else
  FUNC1(mrb, mrbtest, "FLOAT_TOLERANCE", FUNC5(mrb, 1e-12));
#endif
#endif

  if (verbose) {
    FUNC6(mrb, FUNC7(mrb, "$mrbtest_verbose"), FUNC8());
  }
}