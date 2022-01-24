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
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 scalar_t__ HCBUFSIZ_TINY ; 
 char* FUNC0 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,void*) ; 

int FUNC4 (HCFILE *fp, const char *format, void *ptr)
{
  if (fp == NULL) return -1;

  char *buf = (char *) FUNC2 (HCBUFSIZ_TINY);

  if (buf == NULL) return -1;

  char *b = FUNC0 (buf, HCBUFSIZ_TINY - 1, fp);

  if (b == NULL)
  {
    FUNC1 (buf);

    return -1;
  }

  FUNC3 (b, format, ptr);

  FUNC1 (buf);

  return 1;
}