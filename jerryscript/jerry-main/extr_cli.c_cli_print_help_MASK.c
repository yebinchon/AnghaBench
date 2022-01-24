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
 int CLI_LINE_LENGTH ; 
 int CLI_LINE_TAB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (const char *help) /**< the help message to print */
{
  while (help != NULL && *help != 0)
  {
    int length = -1;
    int i = 0;
    for (; i < CLI_LINE_LENGTH - CLI_LINE_TAB && help[i] != 0; i++)
    {
      if (help[i] == ' ')
      {
        length = i;
      }
    }
    if (length < 0 || i < CLI_LINE_LENGTH - CLI_LINE_TAB)
    {
      length = i;
    }

    FUNC1 (help, length);

    help += length;
    while (*help == ' ')
    {
      help++;
    }

    if (*help != 0)
    {
      FUNC2 ("\n");
      FUNC0 (CLI_LINE_TAB);
    }
  }
}