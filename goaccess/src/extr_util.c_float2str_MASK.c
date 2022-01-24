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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,float) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,float) ; 
 char* FUNC2 (scalar_t__) ; 

char *
FUNC3 (float d, int width)
{
  char *s = FUNC2 (FUNC0 (NULL, 0, "%*.2f", width, d) + 1);
  FUNC1 (s, "%*.2f", width, d);

  return s;
}