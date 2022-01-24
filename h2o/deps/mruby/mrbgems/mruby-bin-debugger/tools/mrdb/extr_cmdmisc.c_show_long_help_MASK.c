#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_bool ;
struct TYPE_3__ {char* long_msg; } ;
typedef  TYPE_1__ help_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static mrb_bool
FUNC2(char *cmd1, char *cmd2)
{
  help_msg *help;

  if ((help = FUNC0(cmd1, cmd2)) == NULL) {
    return FALSE;
  }
  FUNC1("%s", help->long_msg);
  return TRUE;
}