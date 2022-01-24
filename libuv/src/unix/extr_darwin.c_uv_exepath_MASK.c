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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  exepath ;

/* Variables and functions */
 int PATH_MAX ; 
 int UV_EINVAL ; 
 int UV_EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char*,char*) ; 
 size_t FUNC4 (char*) ; 

int FUNC5(char* buffer, size_t* size) {
  /* realpath(exepath) may be > PATH_MAX so double it to be on the safe side. */
  char abspath[PATH_MAX * 2 + 1];
  char exepath[PATH_MAX + 1];
  uint32_t exepath_size;
  size_t abspath_size;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  exepath_size = sizeof(exepath);
  if (FUNC1(exepath, &exepath_size))
    return UV_EIO;

  if (FUNC3(exepath, abspath) != abspath)
    return FUNC0(errno);

  abspath_size = FUNC4(abspath);
  if (abspath_size == 0)
    return UV_EIO;

  *size -= 1;
  if (*size > abspath_size)
    *size = abspath_size;

  FUNC2(buffer, abspath, *size);
  buffer[*size] = '\0';

  return 0;
}