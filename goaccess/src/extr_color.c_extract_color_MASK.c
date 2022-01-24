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
 int COLORS ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC3 (char *color)
{
  char *sEnd;
  int col = 0;

  if (FUNC1 (color, "color", 5) != 0)
    return -2;

  color += 5;
  col = FUNC2 (color, &sEnd, 10);
  if (color == sEnd || *sEnd != '\0' || errno == ERANGE)
    return -2;
  /* ensure used color is supported by the terminal */
  if (col > COLORS)
    FUNC0 ("Terminal doesn't support color: %d - max colors: %d", col, COLORS);

  return col;
}