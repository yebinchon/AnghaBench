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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int*,int) ; 
 int UV_EINVAL ; 
 int UV_ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const char* utf8, int utf8len, WCHAR** utf16) {
  int bufsize;

  if (utf8 == NULL)
    return UV_EINVAL;

  /* Check how much space we need */
  bufsize = FUNC1(CP_UTF8, 0, utf8, utf8len, NULL, 0);

  if (bufsize == 0)
    return FUNC4(FUNC0());

  /* Allocate the destination buffer adding an extra byte for the terminating
   * NULL. If utf8len is not -1 MultiByteToWideChar will not add it, so
   * we do it ourselves always, just in case. */
  *utf16 = FUNC3(sizeof(WCHAR) * (bufsize + 1));

  if (*utf16 == NULL)
    return UV_ENOMEM;

  /* Convert to UTF-16 */
  bufsize = FUNC1(CP_UTF8, 0, utf8, utf8len, *utf16, bufsize);

  if (bufsize == 0) {
    FUNC2(*utf16);
    *utf16 = NULL;
    return FUNC4(FUNC0());
  }

  (*utf16)[bufsize] = L'\0';
  return 0;
}