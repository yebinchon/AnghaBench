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
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int ERROR_OUTOFMEMORY ; 
 int FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(char** args, int verbatim_arguments, WCHAR** dst_ptr) {
  char** arg;
  WCHAR* dst = NULL;
  WCHAR* temp_buffer = NULL;
  size_t dst_len = 0;
  size_t temp_buffer_len = 0;
  WCHAR* pos;
  int arg_count = 0;
  int err = 0;

  /* Count the required size. */
  for (arg = args; *arg; arg++) {
    DWORD arg_len;

    arg_len = FUNC1(CP_UTF8,
                                  0,
                                  *arg,
                                  -1,
                                  NULL,
                                  0);
    if (arg_len == 0) {
      return FUNC0();
    }

    dst_len += arg_len;

    if (arg_len > temp_buffer_len)
      temp_buffer_len = arg_len;

    arg_count++;
  }

  /* Adjust for potential quotes. Also assume the worst-case scenario that
   * every character needs escaping, so we need twice as much space. */
  dst_len = dst_len * 2 + arg_count * 2;

  /* Allocate buffer for the final command line. */
  dst = (WCHAR*) FUNC4(dst_len * sizeof(WCHAR));
  if (dst == NULL) {
    err = ERROR_OUTOFMEMORY;
    goto error;
  }

  /* Allocate temporary working buffer. */
  temp_buffer = (WCHAR*) FUNC4(temp_buffer_len * sizeof(WCHAR));
  if (temp_buffer == NULL) {
    err = ERROR_OUTOFMEMORY;
    goto error;
  }

  pos = dst;
  for (arg = args; *arg; arg++) {
    DWORD arg_len;

    /* Convert argument to wide char. */
    arg_len = FUNC1(CP_UTF8,
                                  0,
                                  *arg,
                                  -1,
                                  temp_buffer,
                                  (int) (dst + dst_len - pos));
    if (arg_len == 0) {
      err = FUNC0();
      goto error;
    }

    if (verbatim_arguments) {
      /* Copy verbatim. */
      FUNC5(pos, temp_buffer);
      pos += arg_len - 1;
    } else {
      /* Quote/escape, if needed. */
      pos = FUNC2(temp_buffer, pos);
    }

    *pos++ = *(arg + 1) ? L' ' : L'\0';
  }

  FUNC3(temp_buffer);

  *dst_ptr = dst;
  return 0;

error:
  FUNC3(dst);
  FUNC3(temp_buffer);
  return err;
}