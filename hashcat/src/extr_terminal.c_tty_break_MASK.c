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
struct termios {int* c_cc; int /*<<< orphan*/  c_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICANON ; 
 int /*<<< orphan*/  TCSANOW ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int havemodes ; 
 struct termios savemodes ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

int FUNC3()
{
  struct termios modmodes;

  if (FUNC1 (FUNC0 (stdin), &savemodes) < 0) return -1;

  havemodes = 1;

  modmodes = savemodes;
  modmodes.c_lflag &= ~ICANON;
  modmodes.c_cc[VMIN] = 1;
  modmodes.c_cc[VTIME] = 0;

  return FUNC2 (FUNC0 (stdin), TCSANOW, &modmodes);
}