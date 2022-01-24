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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 char* IMAGETAG_CMDLINE_PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct gengetopt_args_info*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4(const char *filename, struct gengetopt_args_info *args_info)
{
  FILE *outfile;
  int i = 0;

  outfile = FUNC1(filename, "w");

  if (!outfile)
    {
      FUNC2 (stderr, "%s: cannot open file for writing: %s\n", IMAGETAG_CMDLINE_PACKAGE, filename);
      return EXIT_FAILURE;
    }

  i = FUNC3(outfile, args_info);
  FUNC0 (outfile);

  return i;
}