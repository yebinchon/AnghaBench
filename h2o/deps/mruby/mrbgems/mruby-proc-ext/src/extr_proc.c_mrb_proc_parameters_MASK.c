#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mrb_irep {scalar_t__* iseq; int nlocals; TYPE_2__* lv; } ;
struct TYPE_3__ {struct mrb_irep* irep; } ;
struct RProc {TYPE_1__ body; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_aspec ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct RProc const*) ; 
 int /*<<< orphan*/  FUNC6 (struct RProc const*) ; 
 scalar_t__ OP_ENTER ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 struct RProc* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC15(mrb_state *mrb, mrb_value self)
{
  struct parameters_type {
    size_t len;
    const char *name;
    int size;
  } *p, parameters_list [] = {
    {sizeof("req")   - 1, "req",   0},
    {sizeof("opt")   - 1, "opt",   0},
    {sizeof("rest")  - 1, "rest",  0},
    {sizeof("req")   - 1, "req",   0},
    {sizeof("block") - 1, "block", 0},
    {0, NULL, 0}
  };
  const struct RProc *proc = FUNC12(self);
  const struct mrb_irep *irep = proc->body.irep;
  mrb_aspec aspec;
  mrb_value parameters;
  int i, j;
  int max = -1;

  if (FUNC5(proc)) {
    // TODO cfunc aspec is not implemented yet
    return FUNC8(mrb);
  }
  if (!irep) {
    return FUNC8(mrb);
  }
  if (!irep->lv) {
    return FUNC8(mrb);
  }
  if (*irep->iseq != OP_ENTER) {
    return FUNC8(mrb);
  }

  if (!FUNC6(proc)) {
    parameters_list[0].len = sizeof("opt") - 1;
    parameters_list[0].name = "opt";
    parameters_list[3].len = sizeof("opt") - 1;
    parameters_list[3].name = "opt";
  }

  aspec = FUNC7(irep->iseq+1);
  parameters_list[0].size = FUNC3(aspec);
  parameters_list[1].size = FUNC1(aspec);
  parameters_list[2].size = FUNC4(aspec);
  parameters_list[3].size = FUNC2(aspec);
  parameters_list[4].size = FUNC0(aspec);

  parameters = FUNC9(mrb, irep->nlocals-1);

  max = irep->nlocals-1;
  for (i = 0, p = parameters_list; p->name; p++) {
    mrb_value sname = FUNC14(FUNC11(mrb, p->name, p->len));

    for (j = 0; j < p->size; i++, j++) {
      mrb_value a;

      a = FUNC8(mrb);
      FUNC10(mrb, a, sname);
      if (i < max && irep->lv[i].name) {
        mrb_sym sym = irep->lv[i].name;
        const char *name = FUNC13(mrb, sym);
        switch (name[0]) {
        case '*': case '&':
          break;
        default:
          FUNC10(mrb, a, FUNC14(sym));
          break;
        }
      }
      FUNC10(mrb, parameters, a);
    }
  }
  return parameters;
}