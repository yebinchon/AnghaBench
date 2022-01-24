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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;

/* Variables and functions */
 int FUNC0 (struct RClass*) ; 
 int MRB_TT_OBJECT ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,struct RClass*) ; 
 int /*<<< orphan*/  FUNC3 (struct RObject*) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value klass)
{
  struct RClass *c = FUNC1(klass);
  enum mrb_vtype ttype = FUNC0(c);

  /* copied from mrb_instance_alloc() */
  if (ttype == 0) ttype = MRB_TT_OBJECT;
  return FUNC3((struct RObject*)FUNC2(mrb, ttype, c));
}