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
 char** FUNC0 (char**,int) ; 

__attribute__((used)) static void
FUNC1 (int *argc, char ***argv, char *val)
{
  char **_argv = FUNC0 (*argv, (*argc + 2) * sizeof (*_argv));
  _argv[*argc] = val;
  _argv[*argc + 1] = (char *) '\0';
  (*argc)++;
  *argv = _argv;
}