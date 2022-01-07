
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_10__ {struct RClass* string_class; int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_BLOCK () ;
 int MRB_ARGS_NONE () ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int ONIG_OPTION_ASCII_RANGE ;
 int ONIG_OPTION_CAPTURE_GROUP ;
 int ONIG_OPTION_DONT_CAPTURE_GROUP ;
 int ONIG_OPTION_EXTEND ;
 int ONIG_OPTION_FIND_LONGEST ;
 int ONIG_OPTION_FIND_NOT_EMPTY ;
 int ONIG_OPTION_IGNORECASE ;
 int ONIG_OPTION_MULTILINE ;
 int ONIG_OPTION_NEGATE_SINGLELINE ;
 int ONIG_OPTION_NEWLINE_CRLF ;
 int ONIG_OPTION_NOTBOL ;
 int ONIG_OPTION_NOTBOS ;
 int ONIG_OPTION_NOTEOL ;
 int ONIG_OPTION_NOTEOS ;
 int ONIG_OPTION_POSIX_BRACKET_ALL_RANGE ;
 int ONIG_OPTION_POSIX_REGION ;
 int ONIG_OPTION_SINGLELINE ;
 int ONIG_OPTION_WORD_BOUND_ALL_RANGE ;
 int match_data_begin ;
 int match_data_captures ;
 int match_data_copy ;
 int match_data_end ;
 int match_data_index ;
 int match_data_length ;
 int match_data_offset ;
 int match_data_post_match ;
 int match_data_pre_match ;
 int match_data_regexp ;
 int match_data_string ;
 int match_data_to_a ;
 int match_data_to_s ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_const (TYPE_1__*,struct RClass*,char*,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int *,int) ;
 int mrb_define_module_function (TYPE_1__*,struct RClass*,char*,int ,int) ;
 int mrb_fixnum_value (int ) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_obj_iv_set (TYPE_1__*,struct RObject*,int ,int ) ;
 int mrb_true_value () ;
 int mrb_undef_class_method (TYPE_1__*,struct RClass*,char*) ;
 int * onig_regexp_casefold_p ;
 int onig_regexp_clear_global_variables ;
 int onig_regexp_does_set_global_variables ;
 int * onig_regexp_equal ;
 int onig_regexp_escape ;
 int * onig_regexp_initialize ;
 int * onig_regexp_inspect ;
 int * onig_regexp_match ;
 int * onig_regexp_match_p ;
 int * onig_regexp_options ;
 int onig_regexp_set_set_global_variables ;
 int * onig_regexp_to_s ;
 int onig_regexp_version ;
 int string_gsub ;
 int string_match_p ;
 int string_scan ;
 int string_split ;
 int string_sub ;

void
mrb_mruby_onig_regexp_gem_init(mrb_state* mrb) {
  struct RClass *clazz;

  clazz = mrb_define_class(mrb, "OnigRegexp", mrb->object_class);
  MRB_SET_INSTANCE_TT(clazz, MRB_TT_DATA);


  mrb_obj_iv_set(mrb, (struct RObject*)clazz, mrb_intern_lit(mrb, "@set_global_variables"), mrb_true_value());

  mrb_define_const(mrb, clazz, "IGNORECASE", mrb_fixnum_value(ONIG_OPTION_IGNORECASE));
  mrb_define_const(mrb, clazz, "EXTENDED", mrb_fixnum_value(ONIG_OPTION_EXTEND));
  mrb_define_const(mrb, clazz, "MULTILINE", mrb_fixnum_value(ONIG_OPTION_MULTILINE));
  mrb_define_const(mrb, clazz, "SINGLELINE", mrb_fixnum_value(ONIG_OPTION_SINGLELINE));
  mrb_define_const(mrb, clazz, "FIND_LONGEST", mrb_fixnum_value(ONIG_OPTION_FIND_LONGEST));
  mrb_define_const(mrb, clazz, "FIND_NOT_EMPTY", mrb_fixnum_value(ONIG_OPTION_FIND_NOT_EMPTY));
  mrb_define_const(mrb, clazz, "NEGATE_SINGLELINE", mrb_fixnum_value(ONIG_OPTION_NEGATE_SINGLELINE));
  mrb_define_const(mrb, clazz, "DONT_CAPTURE_GROUP", mrb_fixnum_value(ONIG_OPTION_DONT_CAPTURE_GROUP));
  mrb_define_const(mrb, clazz, "CAPTURE_GROUP", mrb_fixnum_value(ONIG_OPTION_CAPTURE_GROUP));
  mrb_define_const(mrb, clazz, "NOTBOL", mrb_fixnum_value(ONIG_OPTION_NOTBOL));
  mrb_define_const(mrb, clazz, "NOTEOL", mrb_fixnum_value(ONIG_OPTION_NOTEOL));
  mrb_define_method(mrb, clazz, "initialize", onig_regexp_initialize, MRB_ARGS_REQ(1) | MRB_ARGS_OPT(2));
  mrb_define_method(mrb, clazz, "==", onig_regexp_equal, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, clazz, "match", onig_regexp_match, MRB_ARGS_REQ(1) | MRB_ARGS_OPT(1));
  mrb_define_method(mrb, clazz, "match?", onig_regexp_match_p, MRB_ARGS_REQ(1) | MRB_ARGS_OPT(1));
  mrb_define_method(mrb, clazz, "casefold?", onig_regexp_casefold_p, MRB_ARGS_NONE());

  mrb_define_method(mrb, clazz, "options", onig_regexp_options, MRB_ARGS_NONE());
  mrb_define_method(mrb, clazz, "inspect", onig_regexp_inspect, MRB_ARGS_NONE());
  mrb_define_method(mrb, clazz, "to_s", onig_regexp_to_s, MRB_ARGS_NONE());

  mrb_define_module_function(mrb, clazz, "escape", onig_regexp_escape, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, clazz, "quote", onig_regexp_escape, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, clazz, "version", onig_regexp_version, MRB_ARGS_NONE());
  mrb_define_module_function(mrb, clazz, "set_global_variables?", onig_regexp_does_set_global_variables, MRB_ARGS_NONE());
  mrb_define_module_function(mrb, clazz, "set_global_variables=", onig_regexp_set_set_global_variables, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, clazz, "clear_global_variables", onig_regexp_clear_global_variables, MRB_ARGS_NONE());

  struct RClass* match_data = mrb_define_class(mrb, "OnigMatchData", mrb->object_class);
  MRB_SET_INSTANCE_TT(clazz, MRB_TT_DATA);
  mrb_undef_class_method(mrb, match_data, "new");


  mrb_define_method(mrb, match_data, "[]", &match_data_index, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, match_data, "begin", &match_data_begin, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, match_data, "captures", &match_data_captures, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "end", &match_data_end, MRB_ARGS_REQ(1));


  mrb_define_method(mrb, match_data, "initialize_copy", &match_data_copy, MRB_ARGS_REQ(1));

  mrb_define_method(mrb, match_data, "length", &match_data_length, MRB_ARGS_NONE());

  mrb_define_method(mrb, match_data, "offset", &match_data_offset, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, match_data, "post_match", &match_data_post_match, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "pre_match", &match_data_pre_match, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "regexp", &match_data_regexp, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "size", &match_data_length, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "string", &match_data_string, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "to_a", &match_data_to_a, MRB_ARGS_NONE());
  mrb_define_method(mrb, match_data, "to_s", &match_data_to_s, MRB_ARGS_NONE());


  mrb_define_method(mrb, mrb->string_class, "onig_regexp_gsub", &string_gsub, MRB_ARGS_REQ(1) | MRB_ARGS_OPT(1) | MRB_ARGS_BLOCK());
  mrb_define_method(mrb, mrb->string_class, "onig_regexp_sub", &string_sub, MRB_ARGS_REQ(1) | MRB_ARGS_OPT(1) | MRB_ARGS_BLOCK());
  mrb_define_method(mrb, mrb->string_class, "onig_regexp_split", &string_split, MRB_ARGS_REQ(1));
  mrb_define_method(mrb, mrb->string_class, "onig_regexp_scan", &string_scan, MRB_ARGS_REQ(1) | MRB_ARGS_BLOCK());
  mrb_define_method(mrb, mrb->string_class, "onig_regexp_match?", &string_match_p, MRB_ARGS_REQ(1) | MRB_ARGS_OPT(1));
}
