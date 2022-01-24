#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {int* beg; int* end; int const num_regs; } ;
typedef  int /*<<< orphan*/  OnigUChar ;
typedef  TYPE_1__ OnigRegion ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 int /*<<< orphan*/  E_INDEX_ERROR ; 
 int /*<<< orphan*/  E_REGEXP_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC14(mrb_state* mrb, mrb_value result, mrb_value replace,
                   mrb_value src, OnigRegex reg, OnigRegion* match)
{
  if (FUNC5(replace)) {
    mrb_value v = FUNC4(mrb, replace, FUNC9(mrb, src, match->beg[0], match->end[0] - match->beg[0]));
    v = FUNC10(mrb, v);
    FUNC8(mrb, result, v);
    return;
  }

  FUNC3(FUNC11(replace));
  char const* ch;
  char const* const end = FUNC1(replace) + FUNC0(replace);
  for(ch = FUNC1(replace); ch < end; ++ch) {
    if (*ch != '\\' || (ch + 1) >= end) {
      FUNC7(mrb, result, ch, 1);
      continue;
    }

    switch(*(++ch)) { // skip back slash and get next char
      case 'k': { // group name
        if ((ch + 2) >= end || ch[1] != '<') { goto replace_expr_error; }
        char const* name_beg = ch += 2;
        while (*ch != '>') { if(++ch == end) { goto replace_expr_error; } }
        FUNC3(ch < end);
        FUNC3(*ch == '>');
        int const idx = FUNC12(
            reg, (OnigUChar const*)name_beg, (OnigUChar const*)ch, match);
        if (idx < 0) {
          FUNC6(mrb, E_INDEX_ERROR, "undefined group name reference: %S",
                     FUNC13(mrb, replace, name_beg - FUNC1(replace), ch - name_beg));
        }
        FUNC7(mrb, result, FUNC1(src) + match->beg[idx], match->end[idx] - match->beg[idx]);
      } break;

      case '\\': // escaped back slash
        FUNC7(mrb, result, ch, 1);
        break;

      default:
        if (FUNC2(*ch)) { // group number 0-9
          int const idx = *ch - '0';
          if (idx < match->num_regs) {
            FUNC7(mrb, result, FUNC1(src) + match->beg[idx], match->end[idx] - match->beg[idx]);
          }
        } else {
          char const str[] = { '\\', *ch };
          FUNC7(mrb, result, str, 2);
        }
        break;
    }
  }

  if(ch == end) { return; }

replace_expr_error:
  FUNC6(mrb, E_REGEXP_ERROR, "invalid replace expression: %S", replace);
}