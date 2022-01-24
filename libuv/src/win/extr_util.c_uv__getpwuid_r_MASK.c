#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int uid; int gid; int /*<<< orphan*/ * shell; int /*<<< orphan*/ * homedir; int /*<<< orphan*/ * username; } ;
typedef  TYPE_1__ uv_passwd_t ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_READ ; 
 int /*<<< orphan*/  UNLEN ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 

int FUNC10(uv_passwd_t* pwd) {
  HANDLE token;
  wchar_t username[UNLEN + 1];
  wchar_t path[MAX_PATH];
  DWORD bufsize;
  int r;

  if (pwd == NULL)
    return UV_EINVAL;

  /* Get the home directory using GetUserProfileDirectoryW() */
  if (FUNC6(FUNC2(), TOKEN_READ, &token) == 0)
    return FUNC9(FUNC3());

  bufsize = FUNC0(path);
  if (!FUNC5(token, path, &bufsize)) {
    r = FUNC3();
    FUNC1(token);

    /* This should not be possible */
    if (r == ERROR_INSUFFICIENT_BUFFER)
      return UV_ENOMEM;

    return FUNC9(r);
  }

  FUNC1(token);

  /* Get the username using GetUserNameW() */
  bufsize = FUNC0(username);
  if (!FUNC4(username, &bufsize)) {
    r = FUNC3();

    /* This should not be possible */
    if (r == ERROR_INSUFFICIENT_BUFFER)
      return UV_ENOMEM;

    return FUNC9(r);
  }

  pwd->homedir = NULL;
  r = FUNC7(path, -1, &pwd->homedir);

  if (r != 0)
    return r;

  pwd->username = NULL;
  r = FUNC7(username, -1, &pwd->username);

  if (r != 0) {
    FUNC8(pwd->homedir);
    return r;
  }

  pwd->shell = NULL;
  pwd->uid = -1;
  pwd->gid = -1;

  return 0;
}