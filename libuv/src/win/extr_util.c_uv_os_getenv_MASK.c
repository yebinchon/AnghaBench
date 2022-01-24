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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int ERROR_SUCCESS ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 () ; 
 int MAX_ENV_VAR_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 

int FUNC8(const char* name, char* buffer, size_t* size) {
  wchar_t var[MAX_ENV_VAR_LENGTH];
  wchar_t* name_w;
  DWORD bufsize;
  size_t len;
  int r;

  if (name == NULL || buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  r = FUNC5(name, -1, &name_w);

  if (r != 0)
    return r;

  FUNC2(ERROR_SUCCESS);
  len = FUNC0(name_w, var, MAX_ENV_VAR_LENGTH);
  FUNC6(name_w);
  FUNC4(len < MAX_ENV_VAR_LENGTH); /* len does not include the null */

  if (len == 0) {
    r = FUNC1();
    if (r != ERROR_SUCCESS)
      return FUNC7(r);
  }

  /* Check how much space we need */
  bufsize = FUNC3(CP_UTF8, 0, var, -1, NULL, 0, NULL, NULL);

  if (bufsize == 0) {
    return FUNC7(FUNC1());
  } else if (bufsize > *size) {
    *size = bufsize;
    return UV_ENOBUFS;
  }

  /* Convert to UTF-8 */
  bufsize = FUNC3(CP_UTF8,
                                0,
                                var,
                                -1,
                                buffer,
                                *size,
                                NULL,
                                NULL);

  if (bufsize == 0)
    return FUNC7(FUNC1());

  *size = bufsize - 1;
  return 0;
}