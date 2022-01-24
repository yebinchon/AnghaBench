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
typedef  int /*<<< orphan*/  const mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int /*<<< orphan*/  OnigUChar ;
typedef  int /*<<< orphan*/  OnigRegion ;
typedef  int /*<<< orphan*/  OnigRegex ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  E_INDEX_ERROR ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  const FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  mrb_onig_region_type ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC15 (char const*) ; 

__attribute__((used)) static mrb_int
FUNC16(mrb_state* mrb, mrb_value self, mrb_value idx_value) {
  if(FUNC4(idx_value)) { return FUNC3(idx_value); }

  char const* name = NULL;
  char const* name_end = NULL;
  if(FUNC13(idx_value)) {
    mrb_int sym_len;
    name = FUNC11(mrb, FUNC12(idx_value), &sym_len);
    name_end = name + sym_len;
  } else if(FUNC9(idx_value)) {
    name = FUNC10(mrb, idx_value);
    name_end = name + FUNC15(name);
  } else { FUNC2(FALSE); }
  FUNC2(name && name_end);

  mrb_value const regexp = FUNC6(mrb, self, FUNC5(mrb, "regexp"));
  FUNC2(!FUNC7(regexp));
  FUNC2(FUNC1(regexp) == &mrb_onig_regexp_type);
  FUNC2(FUNC1(self) == &mrb_onig_region_type);
  int const idx = FUNC14(
      (OnigRegex)FUNC0(regexp), (OnigUChar const*)name, (OnigUChar const*)name_end,
      (OnigRegion*)FUNC0(self));
  if (idx < 0) {
    FUNC8(mrb, E_INDEX_ERROR, "undefined group name reference: %S", idx_value);
  }
  return idx;
}