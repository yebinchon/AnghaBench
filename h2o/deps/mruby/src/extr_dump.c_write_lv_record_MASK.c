#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_5__ {int nlocals; int rlen; struct TYPE_5__** reps; TYPE_1__* lv; } ;
typedef  TYPE_2__ mrb_irep ;
struct TYPE_4__ {scalar_t__ name; int const r; } ;

/* Variables and functions */
 int MRB_DUMP_OK ; 
 int const RITE_LV_NULL_MARK ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(mrb_state *mrb, const mrb_irep *irep, uint8_t **start, mrb_sym const *syms, uint32_t syms_len)
{
  uint8_t *cur = *start;
  int i;

  for (i = 0; i + 1 < irep->nlocals; ++i) {
    if (irep->lv[i].name == 0) {
      cur += FUNC2(RITE_LV_NULL_MARK, cur);
      cur += FUNC2(0, cur);
    }
    else {
      int const sym_idx = FUNC0(syms, syms_len, irep->lv[i].name);
      FUNC1(sym_idx != -1); /* local variable name must be in syms */

      cur += FUNC2(sym_idx, cur);
      cur += FUNC2(irep->lv[i].r, cur);
    }
  }

  for (i = 0; i < irep->rlen; ++i) {
    FUNC3(mrb, irep->reps[i], &cur, syms, syms_len);
  }

  *start = cur;

  return MRB_DUMP_OK;
}