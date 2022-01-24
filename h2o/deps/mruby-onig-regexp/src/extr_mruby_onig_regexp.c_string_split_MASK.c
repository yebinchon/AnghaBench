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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int mrb_bool ;
struct TYPE_2__ {int* beg; int* end; int num_regs; } ;
typedef  TYPE_1__ OnigRegion ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC27 (char*,char*) ; 

__attribute__((used)) static mrb_value
FUNC28(mrb_state* mrb, mrb_value self) {
  mrb_value pattern = FUNC18(); mrb_int limit = 0;
  int argc = FUNC14(mrb, "|oi", &pattern, &limit);
  mrb_value result, tmp;
  mrb_bool lim_p = !(argc == 2 && 0 < limit);

  if(FUNC17(pattern)) { // check $; global variable
    pattern = FUNC15(mrb, FUNC16(mrb, "$;"));
    if (FUNC17(pattern)) {
      pattern = FUNC21(mrb, " ");
    } else if (!FUNC23(pattern) && !FUNC2(pattern)) {
      FUNC20(mrb, E_TYPE_ERROR, "value of $; must be String or Regexp");
    }
    if (argc == 0) { argc = 1; }
  }

  if (!FUNC2(pattern)) {
    if(!FUNC17(pattern)) { pattern = FUNC24(mrb, pattern); }
    if(FUNC23(pattern) && FUNC4(pattern) == 0) {
      /* Special case - split into chars */
      pattern = FUNC13(mrb, FUNC19(FUNC11(mrb, "OnigRegexp")), "new", 1, pattern);
    } else {
      return FUNC13(mrb, self, "string_split", argc, pattern, FUNC12(limit));
    }
  }

  if(FUNC4(self) == 0) { return FUNC6(mrb); }
  if(limit == 1) { return FUNC7(mrb, 1, &self); }

  result = FUNC6(mrb);

  OnigRegex reg;
  FUNC1(mrb, pattern, &mrb_onig_regexp_type, reg);
  mrb_value const match_value = FUNC5(mrb, self, pattern);
  OnigRegion* const match = (OnigRegion*)FUNC0(match_value);
  char *ptr = FUNC22(mrb, self);
  mrb_int len = FUNC4(self);
  mrb_int start = 0, beg = 0, end = 0;
  mrb_int idx = 0, i = 0;
  mrb_int last_null = 0;

  if (argc == 2) { i = 1; }
  while ((end = FUNC25(mrb, reg, match_value, self, start)) >= 0) {
    if (start == end && match->beg[0] == match->end[0]) {
      if (!ptr) {
        FUNC9(mrb, result, FUNC21(mrb, ""));
        break;
      }
      else if (last_null == 1) {
        FUNC9(mrb, result, FUNC26(mrb, self, beg, FUNC27(ptr+beg, ptr+len)));
        beg = start;
      }
      else {
        if (start == len)
          start++;
        else
          start += FUNC27(ptr+start, ptr+len);
        last_null = 1;
        continue;
      }
    }
    else {
      FUNC9(mrb, result, FUNC26(mrb, self, beg, end-beg));
      beg = start = match->end[0];
    }
    last_null = 0;

    for (idx=1; idx < match->num_regs; idx++) {
      if (match->beg[idx] == -1) continue;
      if (match->beg[idx] == match->end[idx])
        tmp = FUNC21(mrb, "");
      else
        tmp = FUNC26(mrb, self, match->beg[idx], match->end[idx]-match->beg[idx]);
      FUNC9(mrb, result, tmp);
    }
    if (!lim_p && limit <= ++i) break;
  }

  if (FUNC4(self) > 0 && (!lim_p || FUNC4(self) > beg || limit < 0)) {
    if (FUNC4(self) == beg)
      tmp = FUNC21(mrb, "");
    else
      tmp = FUNC26(mrb, self, beg, FUNC4(self)-beg);
    FUNC9(mrb, result, tmp);
  }
  if (lim_p && limit == 0) {
    while ((len = FUNC3(result)) > 0 &&
        (tmp = FUNC10(mrb, result, len-1), FUNC4(tmp) == 0))
      FUNC8(mrb, result);
  }

  return result;
}