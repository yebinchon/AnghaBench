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
struct passwd {char* pw_dir; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 char* FUNC0 (char*) ; 
 struct passwd* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value klass)
{
  mrb_int argc;
  char *home;
  mrb_value path;

#ifndef _WIN32
  mrb_value username;

  argc = FUNC4(mrb, "|S", &username);
  if (argc == 0) {
    home = FUNC0("HOME");
    if (home == NULL) {
      return FUNC7();
    }
    if (!FUNC2(home)) {
      FUNC8(mrb, E_ARGUMENT_ERROR, "non-absolute home");
    }
  } else {
    const char *cuser = FUNC11(mrb, username);
    struct passwd *pwd = FUNC1(cuser);
    if (pwd == NULL) {
      return FUNC7();
    }
    home = pwd->pw_dir;
    if (!FUNC2(home)) {
      FUNC9(mrb, E_ARGUMENT_ERROR, "non-absolute home of ~%S", username);
    }
  }
  home = FUNC6(home, -1);
  path = FUNC10(mrb, home);
  FUNC5(home);
  return path;
#else
  argc = mrb_get_argc(mrb);
  if (argc == 0) {
    home = getenv("USERPROFILE");
    if (home == NULL) {
      return mrb_nil_value();
    }
    if (!mrb_file_is_absolute_path(home)) {
      mrb_raise(mrb, E_ARGUMENT_ERROR, "non-absolute home");
    }
  } else {
    return mrb_nil_value();
  }
  home = mrb_locale_from_utf8(home, -1);
  path = mrb_str_new_cstr(mrb, home);
  mrb_locale_free(home);
  return path;
#endif
}