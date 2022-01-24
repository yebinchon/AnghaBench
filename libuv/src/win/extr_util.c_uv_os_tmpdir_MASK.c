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
typedef  int wchar_t ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (size_t,int*) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int UV_EINVAL ; 
 int UV_EIO ; 
 int UV_ENOBUFS ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(char* buffer, size_t* size) {
  wchar_t path[MAX_PATH + 2];
  DWORD bufsize;
  size_t len;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  len = FUNC2(FUNC0(path), path);

  if (len == 0) {
    return FUNC4(FUNC1());
  } else if (len > FUNC0(path)) {
    /* This should not be possible */
    return UV_EIO;
  }

  /* The returned directory should not have a trailing slash, unless it points
   * at a drive root, like c:\. Remove it if needed. */
  if (path[len - 1] == L'\\' &&
      !(len == 3 && path[1] == L':')) {
    len--;
    path[len] = L'\0';
  }

  /* Check how much space we need */
  bufsize = FUNC3(CP_UTF8, 0, path, -1, NULL, 0, NULL, NULL);

  if (bufsize == 0) {
    return FUNC4(FUNC1());
  } else if (bufsize > *size) {
    *size = bufsize;
    return UV_ENOBUFS;
  }

  /* Convert to UTF-8 */
  bufsize = FUNC3(CP_UTF8,
                                0,
                                path,
                                -1,
                                buffer,
                                *size,
                                NULL,
                                NULL);

  if (bufsize == 0)
    return FUNC4(FUNC1());

  *size = bufsize - 1;
  return 0;
}