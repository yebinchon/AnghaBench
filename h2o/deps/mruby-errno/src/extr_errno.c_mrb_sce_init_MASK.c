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
typedef  scalar_t__ mrb_int ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  c; } ;

/* Variables and functions */
 scalar_t__ MRB_TT_FIXNUM ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,int) ; 
 char* FUNC18 (scalar_t__) ; 

__attribute__((used)) static mrb_value
FUNC19(mrb_state *mrb, mrb_value self)
{
  mrb_value c, e2c, m, str;
  mrb_int n;
  int argc, no_errno = 0;
  char buf[20];

  argc = FUNC5(mrb, "o|i", &m, &n);
  if (argc == 1) {
    if (FUNC16(m) == MRB_TT_FIXNUM) {
      n = FUNC3(m);
      m = FUNC11();
    } else {
      no_errno = 1;
    }
  }
  if (!no_errno) {
    e2c = FUNC2(mrb, FUNC12(FUNC9(mrb, "Errno")), FUNC7(mrb, "Errno2class"));
    c = FUNC6(mrb, e2c, FUNC4(n), FUNC11());
    if (!FUNC10(c)) {
      FUNC0(self)->c = FUNC1(c);
      str = FUNC15(mrb, FUNC18(n));
    } else {
      FUNC8(mrb, self, FUNC7(mrb, "errno"), FUNC4(n));
      str = FUNC15(mrb, "Unknown error: ");
      FUNC17(buf, sizeof(buf), "%d", (int)n);
      FUNC14(mrb, str, buf);
    }
  } else {
    str = FUNC15(mrb, "unknown error");
  }
  if (!FUNC10(m)) {
    FUNC14(mrb, str, " - ");
    FUNC13(mrb, str, m);
  }
  FUNC8(mrb, self, FUNC7(mrb, "mesg"), str);
  return self;
}