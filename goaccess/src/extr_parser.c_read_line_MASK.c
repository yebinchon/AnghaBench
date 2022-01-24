#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int num_tests; } ;
struct TYPE_7__ {int /*<<< orphan*/  processed; } ;
typedef  TYPE_1__ GLog ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_6__ conf ; 
 int FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4 (GLog * glog, char *line, int *test, int *cnt, int dry_run)
{
  int ret = 0;
  int tests = conf.num_tests;

  /* start processing log line */
  if ((ret = FUNC1 (glog, line, dry_run)) == 0 && *test)
    *test = 0;

  /* soft ignores */
  if (ret == -1)
    return 0;

  /* glog->processed can actually be less than conf.num_tests, so we make sure
   * (cnt) compares to the right number */
  tests = FUNC0 (conf.num_tests, glog->processed);

  /* reached num of lines to test and no valid records were found, log
   * format is likely not matching */
  if (conf.num_tests && ++(*cnt) == tests && *test) {
    FUNC3 (glog);
    FUNC2 (glog);
    return 1;
  }

  return 0;
}