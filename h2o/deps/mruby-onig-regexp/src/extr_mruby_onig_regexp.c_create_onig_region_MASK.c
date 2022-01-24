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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ MRB_TT_DATA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_onig_regexp_type ; 
 int /*<<< orphan*/  mrb_onig_region_type ; 
 int /*<<< orphan*/  const FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int FUNC8 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state* mrb, mrb_value const str, mrb_value rex) {
  FUNC1(FUNC8(str));
  FUNC1(FUNC9(rex) == MRB_TT_DATA && FUNC0(rex) == &mrb_onig_regexp_type);
  mrb_value const c = FUNC6(FUNC3(
      mrb, FUNC2(mrb, "OnigMatchData"), FUNC10(), &mrb_onig_region_type));
  FUNC5(mrb, c, FUNC4(mrb, "string"), FUNC7(mrb, str));
  FUNC5(mrb, c, FUNC4(mrb, "regexp"), rex);
  return c;
}