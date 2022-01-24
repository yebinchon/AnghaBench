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
struct TYPE_5__ {struct RClass* symbol_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_sym_all_symbols ; 
 int /*<<< orphan*/  mrb_sym_length ; 

void
FUNC3(mrb_state* mrb)
{
  struct RClass *s = mrb->symbol_class;
#ifdef MRB_ENABLE_ALL_SYMBOLS
  mrb_define_class_method(mrb, s, "all_symbols", mrb_sym_all_symbols, MRB_ARGS_NONE());
#endif
  FUNC2(mrb, s, "length", mrb_sym_length, FUNC0());
  FUNC2(mrb, s, "size", mrb_sym_length, FUNC0());
}