#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct RObject {int dummy; } ;
struct RClass {struct RClass* c; } ;
struct TYPE_14__ {struct RObject* top_self; struct RClass* object_class; struct RClass* proc_class; struct RClass* class_class; struct RClass* module_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_CLASS ; 
 int /*<<< orphan*/  MRB_TT_MODULE ; 
 int /*<<< orphan*/  MRB_TT_OBJECT ; 
 int /*<<< orphan*/  MRB_TT_PROC ; 
 struct RClass* FUNC6 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  inspect_main ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  mod_define_method ; 
 int /*<<< orphan*/  mrb_bob_init ; 
 int /*<<< orphan*/  mrb_bob_not ; 
 int /*<<< orphan*/  mrb_class_initialize ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_class_new_class ; 
 int /*<<< orphan*/  mrb_class_superclass ; 
 struct RClass* FUNC9 (TYPE_1__*,char*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct RObject*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_f_send ; 
 int /*<<< orphan*/  mrb_instance_new ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mrb_mod_alias ; 
 int /*<<< orphan*/  mrb_mod_ancestors ; 
 int /*<<< orphan*/  mrb_mod_append_features ; 
 int /*<<< orphan*/  mrb_mod_attr_reader ; 
 int /*<<< orphan*/  mrb_mod_attr_writer ; 
 int /*<<< orphan*/  mrb_mod_const_defined ; 
 int /*<<< orphan*/  mrb_mod_const_get ; 
 int /*<<< orphan*/  mrb_mod_const_missing ; 
 int /*<<< orphan*/  mrb_mod_const_set ; 
 int /*<<< orphan*/  mrb_mod_dummy_visibility ; 
 int /*<<< orphan*/  mrb_mod_eqq ; 
 int /*<<< orphan*/  mrb_mod_extend_object ; 
 int /*<<< orphan*/  mrb_mod_include_p ; 
 int /*<<< orphan*/  mrb_mod_initialize ; 
 int /*<<< orphan*/  mrb_mod_method_defined ; 
 int /*<<< orphan*/  mrb_mod_module_eval ; 
 int /*<<< orphan*/  mrb_mod_module_function ; 
 int /*<<< orphan*/  mrb_mod_prepend_features ; 
 int /*<<< orphan*/  mrb_mod_remove_const ; 
 int /*<<< orphan*/  mrb_mod_to_s ; 
 int /*<<< orphan*/  mrb_mod_undef ; 
 scalar_t__ FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  mrb_obj_equal_m ; 
 int /*<<< orphan*/  mrb_obj_id_m ; 
 int /*<<< orphan*/  mrb_obj_instance_eval ; 
 int /*<<< orphan*/  mrb_obj_not_equal_m ; 
 int /*<<< orphan*/  FUNC16 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,struct RClass*,char*) ; 
 int /*<<< orphan*/  top_define_method ; 

void
FUNC18(mrb_state *mrb)
{
  struct RClass *bob;           /* BasicObject */
  struct RClass *obj;           /* Object */
  struct RClass *mod;           /* Module */
  struct RClass *cls;           /* Class */

  /* boot class hierarchy */
  bob = FUNC6(mrb, 0);
  obj = FUNC6(mrb, bob); mrb->object_class = obj;
  mod = FUNC6(mrb, obj); mrb->module_class = mod;/* obj -> mod */
  cls = FUNC6(mrb, mod); mrb->class_class = cls; /* obj -> cls */
  /* fix-up loose ends */
  bob->c = obj->c = mod->c = cls->c = cls;
  FUNC7(mrb, bob);
  FUNC7(mrb, obj);
  FUNC7(mrb, mod);
  FUNC7(mrb, cls);

  /* name basic classes */
  FUNC11(mrb, bob, "BasicObject", FUNC16(bob));
  FUNC11(mrb, obj, "BasicObject", FUNC16(bob));
  FUNC11(mrb, obj, "Object",      FUNC16(obj));
  FUNC11(mrb, obj, "Module",      FUNC16(mod));
  FUNC11(mrb, obj, "Class",       FUNC16(cls));

  /* name each classes */
  FUNC8(mrb, NULL, bob, FUNC14(mrb, "BasicObject"));
  FUNC8(mrb, NULL, obj, FUNC14(mrb, "Object")); /* 15.2.1 */
  FUNC8(mrb, NULL, mod, FUNC14(mrb, "Module")); /* 15.2.2 */
  FUNC8(mrb, NULL, cls, FUNC14(mrb, "Class"));  /* 15.2.3 */

  mrb->proc_class = FUNC9(mrb, "Proc", mrb->object_class);  /* 15.2.17 */
  FUNC5(mrb->proc_class, MRB_TT_PROC);

  FUNC5(cls, MRB_TT_CLASS);
  FUNC12(mrb, bob, "initialize",              mrb_bob_init,             FUNC2());
  FUNC12(mrb, bob, "!",                       mrb_bob_not,              FUNC2());
  FUNC12(mrb, bob, "==",                      mrb_obj_equal_m,          FUNC4(1)); /* 15.3.1.3.1  */
  FUNC12(mrb, bob, "!=",                      mrb_obj_not_equal_m,      FUNC4(1));
  FUNC12(mrb, bob, "__id__",                  mrb_obj_id_m,             FUNC2()); /* 15.3.1.3.4  */
  FUNC12(mrb, bob, "__send__",                mrb_f_send,               FUNC0());  /* 15.3.1.3.5  */
  FUNC12(mrb, bob, "instance_eval",           mrb_obj_instance_eval,    FUNC0());  /* 15.3.1.3.18 */

  FUNC10(mrb, cls, "new",               mrb_class_new_class,      FUNC3(1));
  FUNC12(mrb, cls, "superclass",              mrb_class_superclass,     FUNC2()); /* 15.2.3.3.4 */
  FUNC12(mrb, cls, "new",                     mrb_instance_new,         FUNC0());  /* 15.2.3.3.3 */
  FUNC12(mrb, cls, "initialize",              mrb_class_initialize,     FUNC3(1)); /* 15.2.3.3.1 */
  FUNC12(mrb, cls, "inherited",               mrb_bob_init,             FUNC4(1));

  FUNC5(mod, MRB_TT_MODULE);
  FUNC12(mrb, mod, "extend_object",           mrb_mod_extend_object,    FUNC4(1)); /* 15.2.2.4.25 */
  FUNC12(mrb, mod, "extended",                mrb_bob_init,             FUNC4(1)); /* 15.2.2.4.26 */
  FUNC12(mrb, mod, "prepended",               mrb_bob_init,             FUNC4(1));
  FUNC12(mrb, mod, "prepend_features",        mrb_mod_prepend_features, FUNC4(1));
  FUNC12(mrb, mod, "include?",                mrb_mod_include_p,        FUNC4(1)); /* 15.2.2.4.28 */
  FUNC12(mrb, mod, "append_features",         mrb_mod_append_features,  FUNC4(1)); /* 15.2.2.4.10 */
  FUNC12(mrb, mod, "class_eval",              mrb_mod_module_eval,      FUNC0());  /* 15.2.2.4.15 */
  FUNC12(mrb, mod, "included",                mrb_bob_init,             FUNC4(1)); /* 15.2.2.4.29 */
  FUNC12(mrb, mod, "initialize",              mrb_mod_initialize,       FUNC2()); /* 15.2.2.4.31 */
  FUNC12(mrb, mod, "module_eval",             mrb_mod_module_eval,      FUNC0());  /* 15.2.2.4.35 */
  FUNC12(mrb, mod, "module_function",         mrb_mod_module_function,  FUNC0());
  FUNC12(mrb, mod, "private",                 mrb_mod_dummy_visibility, FUNC0());  /* 15.2.2.4.36 */
  FUNC12(mrb, mod, "protected",               mrb_mod_dummy_visibility, FUNC0());  /* 15.2.2.4.37 */
  FUNC12(mrb, mod, "public",                  mrb_mod_dummy_visibility, FUNC0());  /* 15.2.2.4.38 */
  FUNC12(mrb, mod, "attr_reader",             mrb_mod_attr_reader,      FUNC0());  /* 15.2.2.4.13 */
  FUNC12(mrb, mod, "attr_writer",             mrb_mod_attr_writer,      FUNC0());  /* 15.2.2.4.14 */
  FUNC12(mrb, mod, "to_s",                    mrb_mod_to_s,             FUNC2());
  FUNC12(mrb, mod, "inspect",                 mrb_mod_to_s,             FUNC2());
  FUNC12(mrb, mod, "alias_method",            mrb_mod_alias,            FUNC0());  /* 15.2.2.4.8 */
  FUNC12(mrb, mod, "ancestors",               mrb_mod_ancestors,        FUNC2()); /* 15.2.2.4.9 */
  FUNC12(mrb, mod, "undef_method",            mrb_mod_undef,            FUNC0());  /* 15.2.2.4.41 */
  FUNC12(mrb, mod, "const_defined?",          mrb_mod_const_defined,    FUNC1(1,1)); /* 15.2.2.4.20 */
  FUNC12(mrb, mod, "const_get",               mrb_mod_const_get,        FUNC4(1)); /* 15.2.2.4.21 */
  FUNC12(mrb, mod, "const_set",               mrb_mod_const_set,        FUNC4(2)); /* 15.2.2.4.23 */
  FUNC12(mrb, mod, "remove_const",            mrb_mod_remove_const,     FUNC4(1)); /* 15.2.2.4.40 */
  FUNC12(mrb, mod, "const_missing",           mrb_mod_const_missing,    FUNC4(1));
  FUNC12(mrb, mod, "method_defined?",         mrb_mod_method_defined,   FUNC4(1)); /* 15.2.2.4.34 */
  FUNC12(mrb, mod, "define_method",           mod_define_method,        FUNC1(1,1));
  FUNC12(mrb, mod, "===",                     mrb_mod_eqq,              FUNC4(1));

  FUNC17(mrb, cls, "append_features");
  FUNC17(mrb, cls, "extend_object");

  mrb->top_self = (struct RObject*)FUNC15(mrb, MRB_TT_OBJECT, mrb->object_class);
  FUNC13(mrb, mrb->top_self, "inspect", inspect_main, FUNC2());
  FUNC13(mrb, mrb->top_self, "to_s", inspect_main, FUNC2());
  FUNC13(mrb, mrb->top_self, "define_method", top_define_method, FUNC1(1,1));
}