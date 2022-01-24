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
struct TYPE_5__ {int /*<<< orphan*/  object_class; struct RClass* hash_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_HASH ; 
 struct RClass* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_hash_aget ; 
 int /*<<< orphan*/  mrb_hash_aset ; 
 int /*<<< orphan*/  mrb_hash_clear ; 
 int /*<<< orphan*/  mrb_hash_default ; 
 int /*<<< orphan*/  mrb_hash_default_proc ; 
 int /*<<< orphan*/  mrb_hash_delete ; 
 int /*<<< orphan*/  mrb_hash_empty_m ; 
 int /*<<< orphan*/  mrb_hash_has_key ; 
 int /*<<< orphan*/  mrb_hash_has_value ; 
 int /*<<< orphan*/  mrb_hash_init ; 
 int /*<<< orphan*/  mrb_hash_init_copy ; 
 int /*<<< orphan*/  mrb_hash_keys ; 
 int /*<<< orphan*/  mrb_hash_rehash ; 
 int /*<<< orphan*/  mrb_hash_set_default ; 
 int /*<<< orphan*/  mrb_hash_set_default_proc ; 
 int /*<<< orphan*/  mrb_hash_shift ; 
 int /*<<< orphan*/  mrb_hash_size_m ; 
 int /*<<< orphan*/  mrb_hash_values ; 

void
FUNC7(mrb_state *mrb)
{
  struct RClass *h;

  mrb->hash_class = h = FUNC5(mrb, "Hash", mrb->object_class);              /* 15.2.13 */
  FUNC4(h, MRB_TT_HASH);

  FUNC6(mrb, h, "initialize_copy", mrb_hash_init_copy,   FUNC3(1));
  FUNC6(mrb, h, "[]",              mrb_hash_aget,        FUNC3(1)); /* 15.2.13.4.2  */
  FUNC6(mrb, h, "[]=",             mrb_hash_aset,        FUNC3(2)); /* 15.2.13.4.3  */
  FUNC6(mrb, h, "clear",           mrb_hash_clear,       FUNC1()); /* 15.2.13.4.4  */
  FUNC6(mrb, h, "default",         mrb_hash_default,     FUNC0());  /* 15.2.13.4.5  */
  FUNC6(mrb, h, "default=",        mrb_hash_set_default, FUNC3(1)); /* 15.2.13.4.6  */
  FUNC6(mrb, h, "default_proc",    mrb_hash_default_proc,FUNC1()); /* 15.2.13.4.7  */
  FUNC6(mrb, h, "default_proc=",   mrb_hash_set_default_proc,FUNC3(1)); /* 15.2.13.4.7  */
  FUNC6(mrb, h, "__delete",        mrb_hash_delete,      FUNC3(1)); /* core of 15.2.13.4.8  */
  FUNC6(mrb, h, "empty?",          mrb_hash_empty_m,     FUNC1()); /* 15.2.13.4.12 */
  FUNC6(mrb, h, "has_key?",        mrb_hash_has_key,     FUNC3(1)); /* 15.2.13.4.13 */
  FUNC6(mrb, h, "has_value?",      mrb_hash_has_value,   FUNC3(1)); /* 15.2.13.4.14 */
  FUNC6(mrb, h, "include?",        mrb_hash_has_key,     FUNC3(1)); /* 15.2.13.4.15 */
  FUNC6(mrb, h, "initialize",      mrb_hash_init,        FUNC2(1)); /* 15.2.13.4.16 */
  FUNC6(mrb, h, "key?",            mrb_hash_has_key,     FUNC3(1)); /* 15.2.13.4.18 */
  FUNC6(mrb, h, "keys",            mrb_hash_keys,        FUNC1()); /* 15.2.13.4.19 */
  FUNC6(mrb, h, "length",          mrb_hash_size_m,      FUNC1()); /* 15.2.13.4.20 */
  FUNC6(mrb, h, "member?",         mrb_hash_has_key,     FUNC3(1)); /* 15.2.13.4.21 */
  FUNC6(mrb, h, "shift",           mrb_hash_shift,       FUNC1()); /* 15.2.13.4.24 */
  FUNC6(mrb, h, "size",            mrb_hash_size_m,      FUNC1()); /* 15.2.13.4.25 */
  FUNC6(mrb, h, "store",           mrb_hash_aset,        FUNC3(2)); /* 15.2.13.4.26 */
  FUNC6(mrb, h, "value?",          mrb_hash_has_value,   FUNC3(1)); /* 15.2.13.4.27 */
  FUNC6(mrb, h, "values",          mrb_hash_values,      FUNC1()); /* 15.2.13.4.28 */
  FUNC6(mrb, h, "rehash",          mrb_hash_rehash,      FUNC1());
}