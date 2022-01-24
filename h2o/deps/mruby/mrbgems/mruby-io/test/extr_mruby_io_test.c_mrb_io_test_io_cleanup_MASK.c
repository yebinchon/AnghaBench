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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ MRB_TT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  mrb_value rfname = FUNC1(mrb, FUNC3(mrb, "$mrbtest_io_rfname"));
  mrb_value wfname = FUNC1(mrb, FUNC3(mrb, "$mrbtest_io_wfname"));
  mrb_value symlinkname = FUNC1(mrb, FUNC3(mrb, "$mrbtest_io_symlinkname"));
  mrb_value socketname = FUNC1(mrb, FUNC3(mrb, "$mrbtest_io_socketname"));

  if (FUNC5(rfname) == MRB_TT_STRING) {
    FUNC6(FUNC0(rfname));
  }
  if (FUNC5(wfname) == MRB_TT_STRING) {
    FUNC6(FUNC0(wfname));
  }
  if (FUNC5(symlinkname) == MRB_TT_STRING) {
    FUNC6(FUNC0(symlinkname));
  }
  if (FUNC5(socketname) == MRB_TT_STRING) {
    FUNC6(FUNC0(socketname));
  }

  FUNC2(mrb, FUNC3(mrb, "$mrbtest_io_rfname"), FUNC4());
  FUNC2(mrb, FUNC3(mrb, "$mrbtest_io_wfname"), FUNC4());
  FUNC2(mrb, FUNC3(mrb, "$mrbtest_io_symlinkname"), FUNC4());
  FUNC2(mrb, FUNC3(mrb, "$mrbtest_io_socketname"), FUNC4());
  FUNC2(mrb, FUNC3(mrb, "$mrbtest_io_msg"), FUNC4());

  return FUNC4();
}