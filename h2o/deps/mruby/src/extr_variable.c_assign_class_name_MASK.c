#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct RObject {int /*<<< orphan*/  tt; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_7__ {struct RClass* object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct RObject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RObject* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct RObject*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC11(mrb_state *mrb, struct RObject *obj, mrb_sym sym, mrb_value v)
{
  if (FUNC10(obj->tt) && FUNC10(FUNC9(v))) {
    struct RObject *c = FUNC5(v);
    if (obj != c && FUNC0(FUNC7(mrb, sym)[0])) {
      mrb_sym id_classname = FUNC1(mrb, "__classname__");
      mrb_value o = FUNC3(mrb, c, id_classname);

      if (FUNC2(o)) {
        mrb_sym id_outer = FUNC1(mrb, "__outer__");
        o = FUNC3(mrb, c, id_outer);

        if (FUNC2(o)) {
          if ((struct RClass *)obj == mrb->object_class) {
            FUNC4(mrb, c, id_classname, FUNC8(sym));
          }
          else {
            FUNC4(mrb, c, id_outer, FUNC6(obj));
          }
        }
      }
    }
  }
}