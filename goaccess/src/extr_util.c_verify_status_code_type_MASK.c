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
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** code_type ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const) ; 

const char *
FUNC3 (const char *str)
{
  size_t i;
  for (i = 0; i < FUNC0 (code_type); i++)
    if (FUNC2 (code_type[i][0], str[0]) != NULL)
      return FUNC1(code_type[i][1]);

  return "Unknown";
}