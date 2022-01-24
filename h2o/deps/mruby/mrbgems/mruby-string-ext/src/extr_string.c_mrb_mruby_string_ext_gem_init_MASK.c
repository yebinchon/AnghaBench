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
struct TYPE_5__ {struct RClass* fixnum_class; struct RClass* string_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mrb_fixnum_chr ; 
 int /*<<< orphan*/  mrb_str_byteslice ; 
 int /*<<< orphan*/  mrb_str_chr ; 
 int /*<<< orphan*/  mrb_str_concat_m ; 
 int /*<<< orphan*/  mrb_str_count ; 
 int /*<<< orphan*/  mrb_str_del_prefix ; 
 int /*<<< orphan*/  mrb_str_del_prefix_bang ; 
 int /*<<< orphan*/  mrb_str_del_suffix ; 
 int /*<<< orphan*/  mrb_str_del_suffix_bang ; 
 int /*<<< orphan*/  mrb_str_delete ; 
 int /*<<< orphan*/  mrb_str_delete_bang ; 
 int /*<<< orphan*/  mrb_str_dump ; 
 int /*<<< orphan*/  mrb_str_end_with ; 
 int /*<<< orphan*/  mrb_str_getbyte ; 
 int /*<<< orphan*/  mrb_str_hex ; 
 int /*<<< orphan*/  mrb_str_lines ; 
 int /*<<< orphan*/  mrb_str_oct ; 
 int /*<<< orphan*/  mrb_str_ord ; 
 int /*<<< orphan*/  mrb_str_setbyte ; 
 int /*<<< orphan*/  mrb_str_squeeze ; 
 int /*<<< orphan*/  mrb_str_squeeze_bang ; 
 int /*<<< orphan*/  mrb_str_start_with ; 
 int /*<<< orphan*/  mrb_str_succ ; 
 int /*<<< orphan*/  mrb_str_succ_bang ; 
 int /*<<< orphan*/  mrb_str_swapcase ; 
 int /*<<< orphan*/  mrb_str_swapcase_bang ; 
 int /*<<< orphan*/  mrb_str_tr ; 
 int /*<<< orphan*/  mrb_str_tr_bang ; 
 int /*<<< orphan*/  mrb_str_tr_s ; 
 int /*<<< orphan*/  mrb_str_tr_s_bang ; 

void
FUNC6(mrb_state* mrb)
{
  struct RClass * s = mrb->string_class;

  FUNC5(mrb, s, "dump",            mrb_str_dump,            FUNC0());
  FUNC5(mrb, s, "getbyte",         mrb_str_getbyte,         FUNC2(1));
  FUNC5(mrb, s, "setbyte",         mrb_str_setbyte,         FUNC2(2));
  FUNC5(mrb, s, "byteslice",       mrb_str_byteslice,       FUNC2(1)|FUNC1(1));
  FUNC5(mrb, s, "swapcase!",       mrb_str_swapcase_bang,   FUNC0());
  FUNC5(mrb, s, "swapcase",        mrb_str_swapcase,        FUNC0());
  FUNC5(mrb, s, "concat",          mrb_str_concat_m,        FUNC2(1));
  FUNC5(mrb, s, "<<",              mrb_str_concat_m,        FUNC2(1));
  FUNC5(mrb, s, "count",           mrb_str_count,           FUNC2(1));
  FUNC5(mrb, s, "tr",              mrb_str_tr,              FUNC2(2));
  FUNC5(mrb, s, "tr!",             mrb_str_tr_bang,         FUNC2(2));
  FUNC5(mrb, s, "tr_s",            mrb_str_tr_s,            FUNC2(2));
  FUNC5(mrb, s, "tr_s!",           mrb_str_tr_s_bang,       FUNC2(2));
  FUNC5(mrb, s, "squeeze",         mrb_str_squeeze,         FUNC1(1));
  FUNC5(mrb, s, "squeeze!",        mrb_str_squeeze_bang,    FUNC1(1));
  FUNC5(mrb, s, "delete",          mrb_str_delete,          FUNC2(1));
  FUNC5(mrb, s, "delete!",         mrb_str_delete_bang,     FUNC2(1));
  FUNC5(mrb, s, "start_with?",     mrb_str_start_with,      FUNC3());
  FUNC5(mrb, s, "end_with?",       mrb_str_end_with,        FUNC3());
  FUNC5(mrb, s, "hex",             mrb_str_hex,             FUNC0());
  FUNC5(mrb, s, "oct",             mrb_str_oct,             FUNC0());
  FUNC5(mrb, s, "chr",             mrb_str_chr,             FUNC0());
  FUNC5(mrb, s, "succ",            mrb_str_succ,            FUNC0());
  FUNC5(mrb, s, "succ!",           mrb_str_succ_bang,       FUNC0());
  FUNC4(mrb,  s, "next",            "succ");
  FUNC4(mrb,  s, "next!",           "succ!");
  FUNC5(mrb, s, "ord",             mrb_str_ord,             FUNC0());
  FUNC5(mrb, s, "delete_prefix!",  mrb_str_del_prefix_bang, FUNC2(1));
  FUNC5(mrb, s, "delete_prefix",   mrb_str_del_prefix,      FUNC2(1));
  FUNC5(mrb, s, "delete_suffix!",  mrb_str_del_suffix_bang, FUNC2(1));
  FUNC5(mrb, s, "delete_suffix",   mrb_str_del_suffix,      FUNC2(1));

  FUNC5(mrb, s, "__lines",         mrb_str_lines,           FUNC0());
  FUNC5(mrb, mrb->fixnum_class, "chr", mrb_fixnum_chr, FUNC0());
}