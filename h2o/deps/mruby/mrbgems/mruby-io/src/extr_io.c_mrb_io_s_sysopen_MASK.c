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
typedef  int mrb_int ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

mrb_value
FUNC9(mrb_state *mrb, mrb_value klass)
{
  mrb_value path = FUNC6();
  mrb_value mode = FUNC6();
  mrb_int fd, perm = -1;
  const char *pat;
  int flags, modenum;

  FUNC2(mrb, "S|Si", &path, &mode, &perm);
  if (FUNC5(mode)) {
    mode = FUNC7(mrb, "r");
  }
  if (perm < 0) {
    perm = 0666;
  }

  pat = FUNC8(mrb, &path);
  flags = FUNC4(mrb, FUNC8(mrb, &mode));
  modenum = FUNC3(mrb, flags);
  fd = FUNC0(mrb, pat, modenum, perm);
  return FUNC1(fd);
}