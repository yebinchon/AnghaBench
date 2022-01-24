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
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value obj)
{
  mrb_value from, to;
  char *src, *dst;

  FUNC4(mrb, "SS", &from, &to);
  src = FUNC6(FUNC8(mrb, &from), -1);
  dst = FUNC6(FUNC8(mrb, &to), -1);
  if (FUNC10(src, dst) < 0) {
#if defined(_WIN32) || defined(_WIN64)
    if (CHMOD(dst, 0666) == 0 && UNLINK(dst) == 0 && rename(src, dst) == 0) {
      mrb_locale_free(src);
      mrb_locale_free(dst);
      return mrb_fixnum_value(0);
    }
#endif
    FUNC5(src);
    FUNC5(dst);
    FUNC9(mrb, FUNC7(mrb, FUNC3(mrb, "(%S, %S)", from, to)));
  }
  FUNC5(src);
  FUNC5(dst);
  return FUNC2(0);
}