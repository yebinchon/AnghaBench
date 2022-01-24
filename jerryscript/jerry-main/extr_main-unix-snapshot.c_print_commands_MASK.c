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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_opts ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (char *prog_name_p) /**< program name */
{
  FUNC0 (prog_name_p, NULL, main_opts);

  FUNC1 ("\nAvailable commands:\n"
          "  generate\n"
          "  litdump\n"
          "  merge\n"
          "\nPassing -h or --help after a command displays its help.\n");
}