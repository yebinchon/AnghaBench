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
typedef  int ssize_t ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LONG_PATH_PREFIX ; 
 int /*<<< orphan*/  LONG_PATH_PREFIX_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNC_PATH_PREFIX ; 
 int /*<<< orphan*/  UNC_PATH_PREFIX_LEN ; 
 int /*<<< orphan*/  VOLUME_NAME_DOS ; 
 int FUNC2 (int*,int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(HANDLE handle, char** realpath_ptr) {
  int r;
  DWORD w_realpath_len;
  WCHAR* w_realpath_ptr = NULL;
  WCHAR* w_realpath_buf;

  w_realpath_len = FUNC0(handle, NULL, 0, VOLUME_NAME_DOS);
  if (w_realpath_len == 0) {
    return -1;
  }

  w_realpath_buf = FUNC4((w_realpath_len + 1) * sizeof(WCHAR));
  if (w_realpath_buf == NULL) {
    FUNC1(ERROR_OUTOFMEMORY);
    return -1;
  }
  w_realpath_ptr = w_realpath_buf;

  if (FUNC0(
          handle, w_realpath_ptr, w_realpath_len, VOLUME_NAME_DOS) == 0) {
    FUNC3(w_realpath_buf);
    FUNC1(ERROR_INVALID_HANDLE);
    return -1;
  }

  /* convert UNC path to long path */
  if (FUNC5(w_realpath_ptr,
              UNC_PATH_PREFIX,
              UNC_PATH_PREFIX_LEN) == 0) {
    w_realpath_ptr += 6;
    *w_realpath_ptr = L'\\';
    w_realpath_len -= 6;
  } else if (FUNC5(w_realpath_ptr,
                      LONG_PATH_PREFIX,
                      LONG_PATH_PREFIX_LEN) == 0) {
    w_realpath_ptr += 4;
    w_realpath_len -= 4;
  } else {
    FUNC3(w_realpath_buf);
    FUNC1(ERROR_INVALID_HANDLE);
    return -1;
  }

  r = FUNC2(w_realpath_ptr, w_realpath_len, realpath_ptr, NULL);
  FUNC3(w_realpath_buf);
  return r;
}