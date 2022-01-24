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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t const) ; 
 size_t FUNC1 (char*,size_t const,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) __attribute__ ((format (printf, 1, 0)))
static int FUNC2 (const char *fmt, va_list ap, char *s, const size_t sz)
{
  size_t length;

  length = FUNC1 (s, sz, fmt, ap);
  length = FUNC0 (length, sz);

  s[length] = 0;

  return (int) length;
}