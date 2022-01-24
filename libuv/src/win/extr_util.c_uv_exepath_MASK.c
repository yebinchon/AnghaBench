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

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 

int FUNC6(char* buffer, size_t* size_ptr) {
  int utf8_len, utf16_buffer_len, utf16_len;
  WCHAR* utf16_buffer;
  int err;

  if (buffer == NULL || size_ptr == NULL || *size_ptr == 0) {
    return UV_EINVAL;
  }

  if (*size_ptr > 32768) {
    /* Windows paths can never be longer than this. */
    utf16_buffer_len = 32768;
  } else {
    utf16_buffer_len = (int) *size_ptr;
  }

  utf16_buffer = (WCHAR*) FUNC4(sizeof(WCHAR) * utf16_buffer_len);
  if (!utf16_buffer) {
    return UV_ENOMEM;
  }

  /* Get the path as UTF-16. */
  utf16_len = FUNC1(NULL, utf16_buffer, utf16_buffer_len);
  if (utf16_len <= 0) {
    err = FUNC0();
    goto error;
  }

  /* utf16_len contains the length, *not* including the terminating null. */
  utf16_buffer[utf16_len] = L'\0';

  /* Convert to UTF-8 */
  utf8_len = FUNC2(CP_UTF8,
                                 0,
                                 utf16_buffer,
                                 -1,
                                 buffer,
                                 (int) *size_ptr,
                                 NULL,
                                 NULL);
  if (utf8_len == 0) {
    err = FUNC0();
    goto error;
  }

  FUNC3(utf16_buffer);

  /* utf8_len *does* include the terminating null at this point, but the
   * returned size shouldn't. */
  *size_ptr = utf8_len - 1;
  return 0;

 error:
  FUNC3(utf16_buffer);
  return FUNC5(err);
}