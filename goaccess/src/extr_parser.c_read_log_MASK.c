#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int piping; int /*<<< orphan*/ * pipe; } ;
typedef  TYPE_1__ GLog ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (GLog ** glog, const char *fn, int dry_run)
{
  FILE *fp = NULL;
  int piping = 0;

  /* Ensure we have a valid pipe to read from stdin. Only checking for
   * conf.read_stdin without verifying for a valid FILE pointer would certainly
   * lead to issues. */
  if (fn[0] == '-' && fn[1] == '\0' && (*glog)->pipe) {
    fp = (*glog)->pipe;
    (*glog)->piping = piping = 1;
  }

  /* make sure we can open the log (if not reading from stdin) */
  if (!piping && (fp = FUNC2 (fn, "r")) == NULL)
    FUNC0 ("Unable to open the specified log file. %s", FUNC4 (errno));

  /* read line by line */
  if (FUNC3 (fp, glog, dry_run)) {
    if (!piping)
      FUNC1 (fp);
    return 1;
  }

  /* close log file if not a pipe */
  if (!piping)
    FUNC1 (fp);

  return 0;
}