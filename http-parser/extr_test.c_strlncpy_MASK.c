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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 

size_t
FUNC3(char *dst, size_t len, const char *src, size_t n)
{
  size_t slen;
  size_t ncpy;

  slen = FUNC2(src, n);

  if (len > 0) {
    ncpy = slen < len ? slen : (len - 1);
    FUNC1(dst, src, ncpy);
    dst[ncpy] = '\0';
  }

  FUNC0(len > slen);
  return slen;
}