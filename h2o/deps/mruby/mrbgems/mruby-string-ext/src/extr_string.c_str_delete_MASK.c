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
typedef  int /*<<< orphan*/  uint8_t ;
struct tr_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 struct tr_pattern STATIC_TR_PATTERN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (struct tr_pattern*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct tr_pattern*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct tr_pattern*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static mrb_bool
FUNC10(mrb_state *mrb, mrb_value str, mrb_value v_pat)
{
  struct tr_pattern pat = STATIC_TR_PATTERN;
  mrb_int i, j;
  char *s;
  mrb_int len;
  mrb_bool flag_changed = FALSE;
  uint8_t bitmap[32];

  FUNC4(mrb, FUNC5(str));
  FUNC9(mrb, &pat, v_pat, TRUE);
  FUNC7(&pat, v_pat, bitmap);
  FUNC8(mrb, &pat);

  s = FUNC2(str);
  len = FUNC1(str);

  for (i=j=0; i<len; i++,j++) {
    if (i>j) s[j] = s[i];
    if (FUNC6(bitmap, s[i])) {
      flag_changed = TRUE;
      j--;
    }
  }
  if (flag_changed) {
    FUNC3(FUNC0(str), j);
    FUNC2(str)[j] = 0;
  }
  return flag_changed;
}