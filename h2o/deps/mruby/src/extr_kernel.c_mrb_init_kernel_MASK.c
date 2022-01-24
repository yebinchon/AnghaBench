#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  module_class; struct RClass* kernel_module; int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mrb_any_to_s ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_equal_m ; 
 int /*<<< orphan*/  mrb_f_block_given_p_m ; 
 int /*<<< orphan*/  mrb_f_global_variables ; 
 int /*<<< orphan*/  mrb_f_raise ; 
 int /*<<< orphan*/  mrb_false ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  mrb_obj_ceqq ; 
 int /*<<< orphan*/  mrb_obj_class_m ; 
 int /*<<< orphan*/  mrb_obj_clone ; 
 int /*<<< orphan*/  mrb_obj_dup ; 
 int /*<<< orphan*/  mrb_obj_equal_m ; 
 int /*<<< orphan*/  mrb_obj_extend_m ; 
 int /*<<< orphan*/  mrb_obj_freeze ; 
 int /*<<< orphan*/  mrb_obj_frozen ; 
 int /*<<< orphan*/  mrb_obj_hash ; 
 int /*<<< orphan*/  mrb_obj_id_m ; 
 int /*<<< orphan*/  mrb_obj_init_copy ; 
 int /*<<< orphan*/  mrb_obj_inspect ; 
 int /*<<< orphan*/  mrb_obj_is_kind_of_m ; 
 int /*<<< orphan*/  mrb_obj_missing ; 
 int /*<<< orphan*/  mrb_obj_remove_instance_variable ; 
 int /*<<< orphan*/  mrb_to_int ; 
 int /*<<< orphan*/  mrb_to_str ; 
 int /*<<< orphan*/  obj_is_instance_of ; 
 int /*<<< orphan*/  obj_respond_to ; 

void
FUNC9(mrb_state *mrb)
{
  struct RClass *krn;

  mrb->kernel_module = krn = FUNC7(mrb, "Kernel");                                                    /* 15.3.1 */
  FUNC5(mrb, krn, "block_given?",         mrb_f_block_given_p_m,           FUNC1());    /* 15.3.1.2.2  */
  FUNC5(mrb, krn, "iterator?",            mrb_f_block_given_p_m,           FUNC1());    /* 15.3.1.2.5  */
;     /* 15.3.1.2.11 */
  FUNC5(mrb, krn, "raise",                mrb_f_raise,                     FUNC2(2));    /* 15.3.1.2.12 */


  FUNC6(mrb, krn, "===",                        mrb_equal_m,                     FUNC3(1));    /* 15.3.1.3.2  */
  FUNC6(mrb, krn, "block_given?",               mrb_f_block_given_p_m,           FUNC1());    /* 15.3.1.3.6  */
  FUNC6(mrb, krn, "class",                      mrb_obj_class_m,                 FUNC1());    /* 15.3.1.3.7  */
  FUNC6(mrb, krn, "clone",                      mrb_obj_clone,                   FUNC1());    /* 15.3.1.3.8  */
  FUNC6(mrb, krn, "dup",                        mrb_obj_dup,                     FUNC1());    /* 15.3.1.3.9  */
  FUNC6(mrb, krn, "eql?",                       mrb_obj_equal_m,                 FUNC3(1));    /* 15.3.1.3.10 */
  FUNC6(mrb, krn, "equal?",                     mrb_obj_equal_m,                 FUNC3(1));    /* 15.3.1.3.11 */
  FUNC6(mrb, krn, "extend",                     mrb_obj_extend_m,                FUNC0());     /* 15.3.1.3.13 */
  FUNC6(mrb, krn, "freeze",                     mrb_obj_freeze,                  FUNC1());
  FUNC6(mrb, krn, "frozen?",                    mrb_obj_frozen,                  FUNC1());
  FUNC6(mrb, krn, "global_variables",           mrb_f_global_variables,          FUNC1());    /* 15.3.1.3.14 */
  FUNC6(mrb, krn, "hash",                       mrb_obj_hash,                    FUNC1());    /* 15.3.1.3.15 */
  FUNC6(mrb, krn, "initialize_copy",            mrb_obj_init_copy,               FUNC3(1));    /* 15.3.1.3.16 */
  FUNC6(mrb, krn, "inspect",                    mrb_obj_inspect,                 FUNC1());    /* 15.3.1.3.17 */
  FUNC6(mrb, krn, "instance_of?",               obj_is_instance_of,              FUNC3(1));    /* 15.3.1.3.19 */

  FUNC6(mrb, krn, "is_a?",                      mrb_obj_is_kind_of_m,            FUNC3(1));    /* 15.3.1.3.24 */
  FUNC6(mrb, krn, "iterator?",                  mrb_f_block_given_p_m,           FUNC1());    /* 15.3.1.3.25 */
  FUNC6(mrb, krn, "kind_of?",                   mrb_obj_is_kind_of_m,            FUNC3(1));    /* 15.3.1.3.26 */
#ifdef MRB_DEFAULT_METHOD_MISSING
  mrb_define_method(mrb, krn, "method_missing",             mrb_obj_missing,                 MRB_ARGS_ANY());     /* 15.3.1.3.30 */
#endif
  FUNC6(mrb, krn, "nil?",                       mrb_false,                       FUNC1());    /* 15.3.1.3.32 */
  FUNC6(mrb, krn, "object_id",                  mrb_obj_id_m,                    FUNC1());    /* 15.3.1.3.33 */
  FUNC6(mrb, krn, "raise",                      mrb_f_raise,                     FUNC0());     /* 15.3.1.3.40 */
  FUNC6(mrb, krn, "remove_instance_variable",   mrb_obj_remove_instance_variable,FUNC3(1));    /* 15.3.1.3.41 */
  FUNC6(mrb, krn, "respond_to?",                obj_respond_to,                  FUNC0());     /* 15.3.1.3.43 */
  FUNC6(mrb, krn, "to_s",                       mrb_any_to_s,                    FUNC1());    /* 15.3.1.3.46 */
  FUNC6(mrb, krn, "__case_eqq",                 mrb_obj_ceqq,                    FUNC3(1));    /* internal */
  FUNC6(mrb, krn, "__to_int",                   mrb_to_int,                      FUNC1()); /* internal */
  FUNC6(mrb, krn, "__to_str",                   mrb_to_str,                      FUNC1()); /* internal */

  FUNC8(mrb, mrb->object_class, mrb->kernel_module);
  FUNC4(mrb, mrb->module_class, "dup", "clone"); /* XXX */
}