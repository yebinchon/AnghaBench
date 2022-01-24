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
typedef  int WCHAR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 size_t FUNC0 (int,int*) ; 
 scalar_t__ FUNC1 () ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int UV_EINVAL ; 
 int UV_EIO ; 
 int UV_ENAMETOOLONG ; 
 int FUNC5 (scalar_t__) ; 

int FUNC6(const char* dir) {
  WCHAR utf16_buffer[MAX_PATH];
  size_t utf16_len;
  WCHAR drive_letter, env_var[4];

  if (dir == NULL) {
    return UV_EINVAL;
  }

  if (FUNC2(CP_UTF8,
                          0,
                          dir,
                          -1,
                          utf16_buffer,
                          MAX_PATH) == 0) {
    DWORD error = FUNC1();
    /* The maximum length of the current working directory is 260 chars,
     * including terminating null. If it doesn't fit, the path name must be too
     * long. */
    if (error == ERROR_INSUFFICIENT_BUFFER) {
      return UV_ENAMETOOLONG;
    } else {
      return FUNC5(error);
    }
  }

  if (!FUNC3(utf16_buffer)) {
    return FUNC5(FUNC1());
  }

  /* Windows stores the drive-local path in an "hidden" environment variable,
   * which has the form "=C:=C:\Windows". SetCurrentDirectory does not update
   * this, so we'll have to do it. */
  utf16_len = FUNC0(MAX_PATH, utf16_buffer);
  if (utf16_len == 0) {
    return FUNC5(FUNC1());
  } else if (utf16_len > MAX_PATH) {
    return UV_EIO;
  }

  /* The returned directory should not have a trailing slash, unless it points
   * at a drive root, like c:\. Remove it if needed. */
  if (utf16_buffer[utf16_len - 1] == L'\\' &&
      !(utf16_len == 3 && utf16_buffer[1] == L':')) {
    utf16_len--;
    utf16_buffer[utf16_len] = L'\0';
  }

  if (utf16_len < 2 || utf16_buffer[1] != L':') {
    /* Doesn't look like a drive letter could be there - probably an UNC path.
     * TODO: Need to handle win32 namespaces like \\?\C:\ ? */
    drive_letter = 0;
  } else if (utf16_buffer[0] >= L'A' && utf16_buffer[0] <= L'Z') {
    drive_letter = utf16_buffer[0];
  } else if (utf16_buffer[0] >= L'a' && utf16_buffer[0] <= L'z') {
    /* Convert to uppercase. */
    drive_letter = utf16_buffer[0] - L'a' + L'A';
  } else {
    /* Not valid. */
    drive_letter = 0;
  }

  if (drive_letter != 0) {
    /* Construct the environment variable name and set it. */
    env_var[0] = L'=';
    env_var[1] = drive_letter;
    env_var[2] = L':';
    env_var[3] = L'\0';

    if (!FUNC4(env_var, utf16_buffer)) {
      return FUNC5(FUNC1());
    }
  }

  return 0;
}