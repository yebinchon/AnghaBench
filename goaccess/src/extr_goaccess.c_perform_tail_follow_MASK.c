#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  output_stdout; } ;
struct TYPE_3__ {scalar_t__ load_from_disk_only; int /*<<< orphan*/ * pipe; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__ conf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* glog ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10 (uint64_t * size1, const char *fn)
{
  FILE *fp = NULL;
  uint64_t size2 = 0;

  if (fn[0] == '-' && fn[1] == '\0') {
    FUNC5 (glog->pipe);
    goto out;
  }
  if (glog->load_from_disk_only)
    return;

  size2 = FUNC2 (fn);

  /* file hasn't changed */
  if (size2 == *size1)
    return;

  if (!(fp = FUNC3 (fn, "r")))
    FUNC0 ("Unable to read log file %s.", FUNC6 (errno));

  if (!FUNC4 (fp, *size1, SEEK_SET))
    FUNC5 (fp);
  FUNC1 (fp);

  *size1 = size2;

out:

  if (!conf.output_stdout)
    FUNC8 ();
  else
    FUNC7 ();

  FUNC9 (200000);      /* 0.2 seconds */
}