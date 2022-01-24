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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int) ; 

int
FUNC4 (int fd, int listener, const char *buf, int len)
{
  char *p = NULL, *ptr = NULL;

  p = FUNC0 (sizeof (uint32_t) * 3, sizeof (char));

  ptr = p;
  ptr += FUNC2 (ptr, listener);
  ptr += FUNC2 (ptr, 0x01);
  ptr += FUNC2 (ptr, len);

  FUNC3 (fd, p, sizeof (uint32_t) * 3);
  FUNC3 (fd, buf, len);
  FUNC1 (p);

  return 0;
}