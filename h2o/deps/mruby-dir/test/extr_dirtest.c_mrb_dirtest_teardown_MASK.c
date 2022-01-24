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
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 struct dirent* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

mrb_value
FUNC12(mrb_state *mrb, mrb_value klass)
{
  mrb_value d, sandbox;
  DIR *dirp;
  struct dirent *dp;
  const char *path;

  /* cleanup sandbox */
  sandbox = FUNC2(mrb, klass, FUNC3(mrb, "sandbox"));
  path = FUNC6(mrb, sandbox);

  dirp = FUNC8(path);
  while ((dp = FUNC9(dirp)) != NULL) {
    if (FUNC11(dp->d_name, ".") == 0 || FUNC11(dp->d_name, "..") == 0)
      continue;
    if (FUNC10(dp->d_name) == -1) {
      FUNC4(mrb, E_RUNTIME_ERROR, "rmdir(%S) failed", FUNC5(mrb, dp->d_name));
    }
  }
  FUNC1(dirp);

  /* back to original pwd */
  d = FUNC2(mrb, klass, FUNC3(mrb, "pwd"));
  path = FUNC6(mrb, d);
  if (FUNC0(path) == -1) {
    FUNC4(mrb, E_RUNTIME_ERROR, "chdir(%S) failed", d);
  }

  /* remove sandbox directory */
  sandbox = FUNC2(mrb, klass, FUNC3(mrb, "sandbox"));
  path = FUNC6(mrb, sandbox);
  if (FUNC10(path) == -1) {
    FUNC4(mrb, E_RUNTIME_ERROR, "rmdir(%S) failed", sandbox);
  }

  return FUNC7();
}