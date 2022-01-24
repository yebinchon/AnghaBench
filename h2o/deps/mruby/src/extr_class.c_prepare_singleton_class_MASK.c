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
struct RClass {scalar_t__ tt; struct RClass* super; struct RClass* c; scalar_t__ iv; int /*<<< orphan*/  mt; int /*<<< orphan*/  flags; } ;
struct RBasic {scalar_t__ tt; struct RClass* c; } ;
struct TYPE_9__ {struct RClass* class_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  MRB_FL_CLASS_IS_INHERITED ; 
 scalar_t__ MRB_TT_CLASS ; 
 scalar_t__ MRB_TT_ICLASS ; 
 scalar_t__ MRB_TT_SCLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct RBasic*,struct RBasic*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,struct RClass*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct RBasic*) ; 
 int /*<<< orphan*/  mt ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, struct RBasic *o)
{
  struct RClass *sc, *c;

  if (o->c->tt == MRB_TT_SCLASS) return;
  sc = (struct RClass*)FUNC4(mrb, MRB_TT_SCLASS, mrb->class_class);
  sc->flags |= MRB_FL_CLASS_IS_INHERITED;
  sc->mt = FUNC0(mt, mrb);
  sc->iv = 0;
  if (o->tt == MRB_TT_CLASS) {
    c = (struct RClass*)o;
    if (!c->super) {
      sc->super = mrb->class_class;
    }
    else {
      sc->super = c->super->c;
    }
  }
  else if (o->tt == MRB_TT_SCLASS) {
    c = (struct RClass*)o;
    while (c->super->tt == MRB_TT_ICLASS)
      c = c->super;
    FUNC1(mrb, c->super);
    sc->super = c->super->c;
  }
  else {
    sc->super = o->c;
    FUNC7(mrb, (struct RBasic*)sc);
  }
  o->c = sc;
  FUNC2(mrb, (struct RBasic*)o, (struct RBasic*)sc);
  FUNC2(mrb, (struct RBasic*)sc, (struct RBasic*)o);
  FUNC5(mrb, (struct RObject*)sc, FUNC3(mrb, "__attached__"), FUNC6(o));
}