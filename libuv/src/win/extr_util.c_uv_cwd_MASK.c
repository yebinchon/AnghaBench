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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t INT_MAX ; 
 int MAX_PATH ; 
 int UV_EINVAL ; 
 int UV_EIO ; 
 int UV_ENOBUFS ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(char* buffer, size_t* size) {
  DWORD utf16_len;
  WCHAR utf16_buffer[MAX_PATH];
  int r;

  if (buffer == NULL || size == NULL) {
    return UV_EINVAL;
  }

  utf16_len = FUNC0(MAX_PATH, utf16_buffer);
  if (utf16_len == 0) {
    return FUNC3(FUNC1());
  } else if (utf16_len > MAX_PATH) {
    /* This should be impossible; however the CRT has a code path to deal with
     * this scenario, so I added a check anyway. */
    return UV_EIO;
  }

  /* utf16_len contains the length, *not* including the terminating null. */
  utf16_buffer[utf16_len] = L'\0';

  /* The returned directory should not have a trailing slash, unless it points
   * at a drive root, like c:\. Remove it if needed. */
  if (utf16_buffer[utf16_len - 1] == L'\\' &&
      !(utf16_len == 3 && utf16_buffer[1] == L':')) {
    utf16_len--;
    utf16_buffer[utf16_len] = L'\0';
  }

  /* Check how much space we need */
  r = FUNC2(CP_UTF8,
                          0,
                          utf16_buffer,
                          -1,
                          NULL,
                          0,
                          NULL,
                          NULL);
  if (r == 0) {
    return FUNC3(FUNC1());
  } else if (r > (int) *size) {
    *size = r;
    return UV_ENOBUFS;
  }

  /* Convert to UTF-8 */
  r = FUNC2(CP_UTF8,
                          0,
                          utf16_buffer,
                          -1,
                          buffer,
                          *size > INT_MAX ? INT_MAX : (int) *size,
                          NULL,
                          NULL);
  if (r == 0) {
    return FUNC3(FUNC1());
  }

  *size = r - 1;
  return 0;
}