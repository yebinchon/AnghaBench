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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

char *
FUNC3 (const char *s)
{
  char *result = 0;
  if (!s)
    return result;

  result = (char*)FUNC0(FUNC2(s) + 1);
  if (result == (char*)0)
    return (char*)0;
  FUNC1(result, s);
  return result;
}