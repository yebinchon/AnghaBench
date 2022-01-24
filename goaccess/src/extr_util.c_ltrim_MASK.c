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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 

char *
FUNC3 (char *s)
{
  char *begin = s;

  while (FUNC0 (*begin))
    ++begin;
  FUNC1 (s, begin, FUNC2 (begin) + 1);

  return s;
}