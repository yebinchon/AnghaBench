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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const WCHAR* utf16, int utf16len, char** utf8) {
  DWORD bufsize;

  if (utf16 == NULL)
    return UV_EINVAL;

  /* Check how much space we need */
  bufsize = FUNC1(CP_UTF8,
                                0,
                                utf16,
                                utf16len,
                                NULL,
                                0,
                                NULL,
                                NULL);

  if (bufsize == 0)
    return FUNC4(FUNC0());

  /* Allocate the destination buffer adding an extra byte for the terminating
   * NULL. If utf16len is not -1 WideCharToMultiByte will not add it, so
   * we do it ourselves always, just in case. */
  *utf8 = FUNC3(bufsize + 1);

  if (*utf8 == NULL)
    return UV_ENOMEM;

  /* Convert to UTF-8 */
  bufsize = FUNC1(CP_UTF8,
                                0,
                                utf16,
                                utf16len,
                                *utf8,
                                bufsize,
                                NULL,
                                NULL);

  if (bufsize == 0) {
    FUNC2(*utf8);
    *utf8 = NULL;
    return FUNC4(FUNC0());
  }

  (*utf8)[bufsize] = '\0';
  return 0;
}