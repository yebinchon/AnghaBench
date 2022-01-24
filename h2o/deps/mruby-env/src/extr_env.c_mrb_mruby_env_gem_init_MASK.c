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
struct RObject {int dummy; } ;
struct RClass {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MRB_TT_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RObject*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_env_aget ; 
 int /*<<< orphan*/  mrb_env_aset ; 
 int /*<<< orphan*/  mrb_env_has_key ; 
 int /*<<< orphan*/  mrb_env_inspect ; 
 int /*<<< orphan*/  mrb_env_keys ; 
 int /*<<< orphan*/  mrb_env_size ; 
 int /*<<< orphan*/  mrb_env_to_a ; 
 int /*<<< orphan*/  mrb_env_to_hash ; 
 int /*<<< orphan*/  mrb_env_to_s ; 
 int /*<<< orphan*/  mrb_env_values ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct RObject*) ; 

void
FUNC9(mrb_state *mrb)
{
  struct RObject *e;

  e = (struct RObject*) FUNC7(mrb, MRB_TT_OBJECT, mrb->object_class);
#if defined(MRUBY_RELEASE_NO) && MRUBY_RELEASE_NO >= 10000
  mrb_include_module(mrb, (struct RClass*)e, mrb_module_get(mrb, "Enumerable"));
#else
  FUNC5(mrb, (struct RClass*)e, FUNC2(mrb, "Enumerable"));
#endif

  FUNC4(mrb, e,"[]",       mrb_env_aget,       FUNC1(1));
  FUNC4(mrb, e,"[]=",      mrb_env_aset,       FUNC1(2));
  FUNC4(mrb, e,"has_key?", mrb_env_has_key,    FUNC1(1));
  FUNC4(mrb, e,"inspect",  mrb_env_inspect,    FUNC0());
  FUNC4(mrb, e,"keys",     mrb_env_keys,       FUNC0());
  FUNC4(mrb, e,"size",     mrb_env_size,       FUNC0());
  FUNC4(mrb, e,"store",    mrb_env_aset,       FUNC1(2));
  FUNC4(mrb, e,"to_a",     mrb_env_to_a,       FUNC0());
  FUNC4(mrb, e,"to_hash",  mrb_env_to_hash,    FUNC0());
  FUNC4(mrb, e,"to_s",     mrb_env_to_s,       FUNC0());
  FUNC4(mrb, e,"values",   mrb_env_values,     FUNC0());

  FUNC3(mrb, "ENV", FUNC8(e));
}