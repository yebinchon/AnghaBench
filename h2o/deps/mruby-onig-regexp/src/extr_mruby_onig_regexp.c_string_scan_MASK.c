#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_2__ {int num_regs; int* beg; int* end; } ;
typedef  TYPE_1__ OnigRegion ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ONIG_MISMATCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 char* FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  const FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int,int) ; 
 int FUNC19 (char*,char*) ; 

__attribute__((used)) static mrb_value
FUNC20(mrb_state* mrb, mrb_value self) {
  mrb_value blk, match_expr;
  FUNC12(mrb, "&o", &blk, &match_expr);

  if(!FUNC2(match_expr)) {
    return FUNC11(mrb, self, FUNC13(mrb, "string_scan"),
                                  1, &match_expr, blk);
  }

  OnigRegex reg;
  FUNC1(mrb, match_expr, &mrb_onig_regexp_type, reg);
  mrb_value const result = FUNC14(blk)? FUNC7(mrb) : self;
  mrb_value m_value = FUNC5(mrb, self, match_expr);
  OnigRegion* const m = (OnigRegion*)FUNC0(m_value);
  int last_end_pos = 0;
  int i;

  while (1) {
    if(FUNC17(mrb, reg, m_value, self, last_end_pos) == ONIG_MISMATCH) { break; }

    if(FUNC14(blk)) {
      FUNC10(FUNC6(result));
      if(m->num_regs == 1) {
        FUNC9(mrb, result, FUNC18(mrb, self, m->beg[0], m->end[0] - m->beg[0]));
      } else {
        mrb_value const elem = FUNC8(mrb, m->num_regs - 1);
        for(i = 1; i < m->num_regs; ++i) {
          FUNC9(mrb, elem, FUNC18(mrb, self, m->beg[i], m->end[i] - m->beg[i]));
        }
        FUNC9(mrb, result, elem);
      }
    } else { // call block
      FUNC10(FUNC15(result));
      if(m->num_regs == 1) {
        FUNC16(mrb, blk, FUNC18(mrb, self, m->beg[0], m->end[0] - m->beg[0]));
      } else {
        mrb_value argv = FUNC8(mrb, m->num_regs - 1);
        for(i = 1; i < m->num_regs; ++i) {
          FUNC9(mrb, argv, FUNC18(mrb, self, m->beg[i], m->end[i] - m->beg[i]));
        }
        FUNC16(mrb, blk, argv);
      }
    }

    if (m->beg[0] == m->end[0]) {
      /*
      * Always consume at least one character of the input string
      */
      if (FUNC3(self) > m->end[0]) {
        char* p = FUNC4(self) + last_end_pos;
        char* e = p + FUNC3(self);
        int len = FUNC19(p, e);
        last_end_pos = m->end[0] + len;
      } else {
        last_end_pos = m->end[0] + 1;
      }
    } else {
      last_end_pos = m->end[0];
    }
  }

  return result;
}