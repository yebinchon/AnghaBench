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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int UV_EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned long) ; 

int FUNC4(char* buffer, size_t* size) {
  ssize_t res;
  char buf[128];

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  FUNC3(buf, sizeof(buf), "/proc/%lu/path/a.out", (unsigned long) FUNC1());

  res = *size - 1;
  if (res > 0)
    res = FUNC2(buf, buffer, res);

  if (res == -1)
    return FUNC0(errno);

  buffer[res] = '\0';
  *size = res;
  return 0;
}