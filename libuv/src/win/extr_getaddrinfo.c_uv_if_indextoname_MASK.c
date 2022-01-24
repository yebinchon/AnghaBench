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
typedef  int /*<<< orphan*/  NET_LUID ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  NDIS_IF_MAX_STRING_SIZE ; 
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 

int FUNC6(unsigned int ifindex, char* buffer, size_t* size) {
  NET_LUID luid;
  wchar_t wname[NDIS_IF_MAX_STRING_SIZE + 1]; /* Add one for the NUL. */
  DWORD bufsize;
  int r;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  r = FUNC1(ifindex, &luid);

  if (r != 0)
    return FUNC5(r);

  r = FUNC2(&luid, wname, FUNC0(wname));

  if (r != 0)
    return FUNC5(r);

  /* Check how much space we need */
  bufsize = FUNC4(CP_UTF8, 0, wname, -1, NULL, 0, NULL, NULL);

  if (bufsize == 0) {
    return FUNC5(FUNC3());
  } else if (bufsize > *size) {
    *size = bufsize;
    return UV_ENOBUFS;
  }

  /* Convert to UTF-8 */
  bufsize = FUNC4(CP_UTF8,
                                0,
                                wname,
                                -1,
                                buffer,
                                *size,
                                NULL,
                                NULL);

  if (bufsize == 0)
    return FUNC5(FUNC3());

  *size = bufsize - 1;
  return 0;
}