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
struct gengetopt_args_info {int dummy; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gengetopt_args_info*) ; 
 scalar_t__ FUNC2 (struct gengetopt_args_info*,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3 (struct gengetopt_args_info *args_info, const char *prog_name)
{
  int result = EXIT_SUCCESS;

  if (FUNC2(args_info, prog_name, 0) > 0)
    result = EXIT_FAILURE;

  if (result == EXIT_FAILURE)
    {
      FUNC1 (args_info);
      FUNC0 (EXIT_FAILURE);
    }
  
  return result;
}