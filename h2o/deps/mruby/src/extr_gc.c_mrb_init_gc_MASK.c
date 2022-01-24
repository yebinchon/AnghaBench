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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  gc_disable ; 
 int /*<<< orphan*/  gc_enable ; 
 int /*<<< orphan*/  gc_generational_mode_get ; 
 int /*<<< orphan*/  gc_generational_mode_set ; 
 int /*<<< orphan*/  gc_interval_ratio_get ; 
 int /*<<< orphan*/  gc_interval_ratio_set ; 
 int /*<<< orphan*/  gc_start ; 
 int /*<<< orphan*/  gc_step_ratio_get ; 
 int /*<<< orphan*/  gc_step_ratio_set ; 
 int /*<<< orphan*/  gc_test ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ *,char*) ; 

void
FUNC4(mrb_state *mrb)
{
  struct RClass *gc;

  gc = FUNC3(mrb, "GC");

  FUNC2(mrb, gc, "start", gc_start, FUNC0());
  FUNC2(mrb, gc, "enable", gc_enable, FUNC0());
  FUNC2(mrb, gc, "disable", gc_disable, FUNC0());
  FUNC2(mrb, gc, "interval_ratio", gc_interval_ratio_get, FUNC0());
  FUNC2(mrb, gc, "interval_ratio=", gc_interval_ratio_set, FUNC1(1));
  FUNC2(mrb, gc, "step_ratio", gc_step_ratio_get, FUNC0());
  FUNC2(mrb, gc, "step_ratio=", gc_step_ratio_set, FUNC1(1));
  FUNC2(mrb, gc, "generational_mode=", gc_generational_mode_set, FUNC1(1));
  FUNC2(mrb, gc, "generational_mode", gc_generational_mode_get, FUNC0());
#ifdef GC_TEST
#ifdef GC_DEBUG
  mrb_define_class_method(mrb, gc, "test", gc_test, MRB_ARGS_NONE());
#endif
#endif
}