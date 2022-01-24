#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_method_t ;
struct TYPE_6__ {char const* method_name; int /*<<< orphan*/ * class_name; } ;
typedef  TYPE_2__ mrb_debug_methodpoint ;
struct TYPE_5__ {TYPE_2__ methodpoint; } ;
struct TYPE_7__ {int /*<<< orphan*/  bpno; TYPE_1__ point; } ;
typedef  TYPE_3__ mrb_debug_breakpoint ;
typedef  scalar_t__ mrb_bool ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MRB_DEBUG_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct RClass* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,struct RClass*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RClass**,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 

__attribute__((used)) static int32_t
FUNC10(mrb_state *mrb, mrb_debug_breakpoint *bp, struct RClass *class_obj, mrb_sym method_sym, mrb_bool* isCfunc)
{
  const char* class_name;
  const char* method_name;
  mrb_method_t m;
  struct RClass* sc;
  const char* sn;
  mrb_sym ssym;
  mrb_debug_methodpoint *method_p;
  mrb_bool is_defined;

  method_name = FUNC7(mrb, method_sym);

  method_p = &bp->point.methodpoint;
  if (FUNC9(method_p->method_name, method_name) == 0) {
    class_name = FUNC5(mrb, class_obj);
    if (class_name == NULL) {
      if (method_p->class_name == NULL) {
        return bp->bpno;
      }
    }
    else if (method_p->class_name != NULL) {
      m = FUNC6(mrb, &class_obj, method_sym);
      if (FUNC1(m)) {
        return MRB_DEBUG_OK;
      }
      if (FUNC0(m)) {
        *isCfunc = TRUE;
      }

      is_defined = FUNC3(mrb, method_p->class_name);
      if (is_defined == FALSE) {
        return MRB_DEBUG_OK;
      }

      sc = FUNC4(mrb, method_p->class_name);
      ssym = FUNC8(FUNC2(mrb, method_p->method_name));
      m = FUNC6(mrb, &sc, ssym);
      if (FUNC1(m)) {
        return MRB_DEBUG_OK;
      }

      class_name = FUNC5(mrb, class_obj);
      sn = FUNC5(mrb, sc);
      if (FUNC9(sn, class_name) == 0) {
        return bp->bpno;
      }
    }
  }
  return MRB_DEBUG_OK;
}