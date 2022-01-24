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
 char* RIOT_BOARD ; 
 char* RIOT_MCU ; 
 int SHELL_DEFAULT_BUFSIZE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  shell_commands ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

int FUNC4 (void)
{
  FUNC3 ((unsigned) FUNC0 ());
  FUNC1 ("You are running RIOT on a(n) %s board.\n", RIOT_BOARD);
  FUNC1 ("This board features a(n) %s MCU.\n", RIOT_MCU);

  /* start the shell */
  char line_buf[SHELL_DEFAULT_BUFSIZE];
  FUNC2 (shell_commands, line_buf, SHELL_DEFAULT_BUFSIZE);

  return 0;
}