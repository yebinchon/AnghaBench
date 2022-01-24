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
struct RObject {int dummy; } ;
struct RClass {scalar_t__ tt; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int FUNC0 (struct RClass*) ; 
 int MRB_TT_CPTR ; 
 int MRB_TT_OBJECT ; 
 scalar_t__ MRB_TT_SCLASS ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,struct RClass*) ; 
 int /*<<< orphan*/  FUNC3 (struct RObject*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value FUNC6(mrb_state *mrb, mrb_value cv)
{
  struct RClass *c = FUNC1(cv);
  struct RObject *o;
  enum mrb_vtype ttype = FUNC0(c);

  if (c->tt == MRB_TT_SCLASS)
    FUNC4(mrb, E_TYPE_ERROR, "can't create instance of singleton class");

  if (ttype == 0) ttype = MRB_TT_OBJECT;
  if (ttype <= MRB_TT_CPTR) {
    FUNC5(mrb, E_TYPE_ERROR, "can't create instance of %S", cv);
  }
  o = (struct RObject*)FUNC2(mrb, ttype, c);
  return FUNC3(o);
}