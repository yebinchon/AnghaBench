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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int FUNC0 (int,int,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  char opt[8];
  int s;
  mrb_int family, level, optname;
  mrb_value c, data;
  socklen_t optlen;

  FUNC5(mrb, "ii", &level, &optname);
  s = FUNC11(mrb, self);
  optlen = sizeof(opt);
  if (FUNC0(s, (int)level, (int)optname, opt, &optlen) == -1)
    FUNC9(mrb, "getsockopt");
  c = FUNC2(mrb, FUNC7(FUNC1(mrb, "Socket")), FUNC6(mrb, "Option"));
  family = FUNC10(s);
  data = FUNC8(mrb, opt, optlen);
  return FUNC4(mrb, c, "new", 4, FUNC3(family), FUNC3(level), FUNC3(optname), data);
}