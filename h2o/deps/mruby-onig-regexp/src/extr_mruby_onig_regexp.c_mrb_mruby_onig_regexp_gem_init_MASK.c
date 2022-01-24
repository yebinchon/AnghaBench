#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_10__ {struct RClass* string_class; int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_DATA ; 
 int /*<<< orphan*/  ONIG_OPTION_ASCII_RANGE ; 
 int /*<<< orphan*/  ONIG_OPTION_CAPTURE_GROUP ; 
 int /*<<< orphan*/  ONIG_OPTION_DONT_CAPTURE_GROUP ; 
 int /*<<< orphan*/  ONIG_OPTION_EXTEND ; 
 int /*<<< orphan*/  ONIG_OPTION_FIND_LONGEST ; 
 int /*<<< orphan*/  ONIG_OPTION_FIND_NOT_EMPTY ; 
 int /*<<< orphan*/  ONIG_OPTION_IGNORECASE ; 
 int /*<<< orphan*/  ONIG_OPTION_MULTILINE ; 
 int /*<<< orphan*/  ONIG_OPTION_NEGATE_SINGLELINE ; 
 int /*<<< orphan*/  ONIG_OPTION_NEWLINE_CRLF ; 
 int /*<<< orphan*/  ONIG_OPTION_NOTBOL ; 
 int /*<<< orphan*/  ONIG_OPTION_NOTBOS ; 
 int /*<<< orphan*/  ONIG_OPTION_NOTEOL ; 
 int /*<<< orphan*/  ONIG_OPTION_NOTEOS ; 
 int /*<<< orphan*/  ONIG_OPTION_POSIX_BRACKET_ALL_RANGE ; 
 int /*<<< orphan*/  ONIG_OPTION_POSIX_REGION ; 
 int /*<<< orphan*/  ONIG_OPTION_SINGLELINE ; 
 int /*<<< orphan*/  ONIG_OPTION_WORD_BOUND_ALL_RANGE ; 
 int /*<<< orphan*/  match_data_begin ; 
 int /*<<< orphan*/  match_data_captures ; 
 int /*<<< orphan*/  match_data_copy ; 
 int /*<<< orphan*/  match_data_end ; 
 int /*<<< orphan*/  match_data_index ; 
 int /*<<< orphan*/  match_data_length ; 
 int /*<<< orphan*/  match_data_offset ; 
 int /*<<< orphan*/  match_data_post_match ; 
 int /*<<< orphan*/  match_data_pre_match ; 
 int /*<<< orphan*/  match_data_regexp ; 
 int /*<<< orphan*/  match_data_string ; 
 int /*<<< orphan*/  match_data_to_a ; 
 int /*<<< orphan*/  match_data_to_s ; 
 struct RClass* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/ * onig_regexp_casefold_p ; 
 int /*<<< orphan*/  onig_regexp_clear_global_variables ; 
 int /*<<< orphan*/  onig_regexp_does_set_global_variables ; 
 int /*<<< orphan*/ * onig_regexp_equal ; 
 int /*<<< orphan*/  onig_regexp_escape ; 
 int /*<<< orphan*/ * onig_regexp_initialize ; 
 int /*<<< orphan*/ * onig_regexp_inspect ; 
 int /*<<< orphan*/ * onig_regexp_match ; 
 int /*<<< orphan*/ * onig_regexp_match_p ; 
 int /*<<< orphan*/ * onig_regexp_options ; 
 int /*<<< orphan*/  onig_regexp_set_set_global_variables ; 
 int /*<<< orphan*/ * onig_regexp_to_s ; 
 int /*<<< orphan*/  onig_regexp_version ; 
 int /*<<< orphan*/  string_gsub ; 
 int /*<<< orphan*/  string_match_p ; 
 int /*<<< orphan*/  string_scan ; 
 int /*<<< orphan*/  string_split ; 
 int /*<<< orphan*/  string_sub ; 

void
FUNC14(mrb_state* mrb) {
  struct RClass *clazz;

  clazz = FUNC5(mrb, "OnigRegexp", mrb->object_class);
  FUNC4(clazz, MRB_TT_DATA);

  // enable global variables setting in onig_match_common by default
  FUNC11(mrb, (struct RObject*)clazz, FUNC10(mrb, "@set_global_variables"), FUNC12());

  FUNC6(mrb, clazz, "IGNORECASE", FUNC9(ONIG_OPTION_IGNORECASE));
  FUNC6(mrb, clazz, "EXTENDED", FUNC9(ONIG_OPTION_EXTEND));
  FUNC6(mrb, clazz, "MULTILINE", FUNC9(ONIG_OPTION_MULTILINE));
  FUNC6(mrb, clazz, "SINGLELINE", FUNC9(ONIG_OPTION_SINGLELINE));
  FUNC6(mrb, clazz, "FIND_LONGEST", FUNC9(ONIG_OPTION_FIND_LONGEST));
  FUNC6(mrb, clazz, "FIND_NOT_EMPTY", FUNC9(ONIG_OPTION_FIND_NOT_EMPTY));
  FUNC6(mrb, clazz, "NEGATE_SINGLELINE", FUNC9(ONIG_OPTION_NEGATE_SINGLELINE));
  FUNC6(mrb, clazz, "DONT_CAPTURE_GROUP", FUNC9(ONIG_OPTION_DONT_CAPTURE_GROUP));
  FUNC6(mrb, clazz, "CAPTURE_GROUP", FUNC9(ONIG_OPTION_CAPTURE_GROUP));
  FUNC6(mrb, clazz, "NOTBOL", FUNC9(ONIG_OPTION_NOTBOL));
  FUNC6(mrb, clazz, "NOTEOL", FUNC9(ONIG_OPTION_NOTEOL));
#ifdef ONIG_OPTION_POSIX_REGION
  mrb_define_const(mrb, clazz, "POSIX_REGION", mrb_fixnum_value(ONIG_OPTION_POSIX_REGION));
#endif
#ifdef ONIG_OPTION_ASCII_RANGE
  mrb_define_const(mrb, clazz, "ASCII_RANGE", mrb_fixnum_value(ONIG_OPTION_ASCII_RANGE));
#endif
#ifdef ONIG_OPTION_POSIX_BRACKET_ALL_RANGE
  mrb_define_const(mrb, clazz, "POSIX_BRACKET_ALL_RANGE", mrb_fixnum_value(ONIG_OPTION_POSIX_BRACKET_ALL_RANGE));
#endif
#ifdef ONIG_OPTION_WORD_BOUND_ALL_RANGE
  mrb_define_const(mrb, clazz, "WORD_BOUND_ALL_RANGE", mrb_fixnum_value(ONIG_OPTION_WORD_BOUND_ALL_RANGE));
#endif
#ifdef ONIG_OPTION_NEWLINE_CRLF
  mrb_define_const(mrb, clazz, "NEWLINE_CRLF", mrb_fixnum_value(ONIG_OPTION_NEWLINE_CRLF));
#endif
#ifdef ONIG_OPTION_NOTBOS
  mrb_define_const(mrb, clazz, "NOTBOS", mrb_fixnum_value(ONIG_OPTION_NOTBOS));
#endif
#ifdef ONIG_OPTION_NOTEOS
  mrb_define_const(mrb, clazz, "NOTEOS", mrb_fixnum_value(ONIG_OPTION_NOTEOS));
#endif

  FUNC7(mrb, clazz, "initialize", onig_regexp_initialize, FUNC3(1) | FUNC2(2));
  FUNC7(mrb, clazz, "==", onig_regexp_equal, FUNC3(1));
  FUNC7(mrb, clazz, "match", onig_regexp_match, FUNC3(1) | FUNC2(1));
  FUNC7(mrb, clazz, "match?", onig_regexp_match_p, FUNC3(1) | FUNC2(1));
  FUNC7(mrb, clazz, "casefold?", onig_regexp_casefold_p, FUNC1());

  FUNC7(mrb, clazz, "options", onig_regexp_options, FUNC1());
  FUNC7(mrb, clazz, "inspect", onig_regexp_inspect, FUNC1());
  FUNC7(mrb, clazz, "to_s", onig_regexp_to_s, FUNC1());

  FUNC8(mrb, clazz, "escape", onig_regexp_escape, FUNC3(1));
  FUNC8(mrb, clazz, "quote", onig_regexp_escape, FUNC3(1));
  FUNC8(mrb, clazz, "version", onig_regexp_version, FUNC1());
  FUNC8(mrb, clazz, "set_global_variables?", onig_regexp_does_set_global_variables, FUNC1());
  FUNC8(mrb, clazz, "set_global_variables=", onig_regexp_set_set_global_variables, FUNC3(1));
  FUNC8(mrb, clazz, "clear_global_variables", onig_regexp_clear_global_variables, FUNC1());

  struct RClass* match_data = FUNC5(mrb, "OnigMatchData", mrb->object_class);
  FUNC4(clazz, MRB_TT_DATA);
  FUNC13(mrb, match_data, "new");

  // mrb_define_method(mrb, match_data, "==", &match_data_eq);
  FUNC7(mrb, match_data, "[]", &match_data_index, FUNC3(1));
  FUNC7(mrb, match_data, "begin", &match_data_begin, FUNC3(1));
  FUNC7(mrb, match_data, "captures", &match_data_captures, FUNC1());
  FUNC7(mrb, match_data, "end", &match_data_end, FUNC3(1));
  // mrb_define_method(mrb, match_data, "eql?", &match_data_eq);
  // mrb_define_method(mrb, match_data, "hash", &match_data_hash);
  FUNC7(mrb, match_data, "initialize_copy", &match_data_copy, FUNC3(1));
  // mrb_define_method(mrb, match_data, "inspect", &match_data_inspect);
  FUNC7(mrb, match_data, "length", &match_data_length, FUNC1());
  // mrb_define_method(mrb, match_data, "names", &match_data_names);
  FUNC7(mrb, match_data, "offset", &match_data_offset, FUNC3(1));
  FUNC7(mrb, match_data, "post_match", &match_data_post_match, FUNC1());
  FUNC7(mrb, match_data, "pre_match", &match_data_pre_match, FUNC1());
  FUNC7(mrb, match_data, "regexp", &match_data_regexp, FUNC1());
  FUNC7(mrb, match_data, "size", &match_data_length, FUNC1());
  FUNC7(mrb, match_data, "string", &match_data_string, FUNC1());
  FUNC7(mrb, match_data, "to_a", &match_data_to_a, FUNC1());
  FUNC7(mrb, match_data, "to_s", &match_data_to_s, FUNC1());
  // mrb_define_method(mrb, match_data, "values_at", &match_data_values_at);

  FUNC7(mrb, mrb->string_class, "onig_regexp_gsub", &string_gsub, FUNC3(1) | FUNC2(1) | FUNC0());
  FUNC7(mrb, mrb->string_class, "onig_regexp_sub", &string_sub, FUNC3(1) | FUNC2(1) | FUNC0());
  FUNC7(mrb, mrb->string_class, "onig_regexp_split", &string_split, FUNC3(1));
  FUNC7(mrb, mrb->string_class, "onig_regexp_scan", &string_scan, FUNC3(1) | FUNC0());
  FUNC7(mrb, mrb->string_class, "onig_regexp_match?", &string_match_p, FUNC3(1) | FUNC2(1));
}