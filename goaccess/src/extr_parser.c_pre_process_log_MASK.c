#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int is_404; int is_static; int /*<<< orphan*/  resp_size; int /*<<< orphan*/  uniq_key; int /*<<< orphan*/  req; int /*<<< orphan*/ * agent; } ;
typedef  TYPE_1__ GLogItem ;
typedef  int /*<<< orphan*/  GLog ;

/* Variables and functions */
 int IGNORE_LEVEL_PANEL ; 
 int IGNORE_LEVEL_REQ ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (char*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC15 (GLog * glog, char *line, int dry_run)
{
  GLogItem *logitem;
  int ret = 0;
  int ignorelevel = 0;

  /* soft ignore these lines */
  if (FUNC13 (line))
    return -1;

  FUNC2 (glog);
  logitem = FUNC8 (glog);
  /* Parse a line of log, and fill structure with appropriate values */
  if (FUNC11 (logitem, line) || FUNC14 (logitem)) {
    ret = 1;
    FUNC1 (glog, line);
    goto cleanup;
  }

  /* agent will be null in cases where %u is not specified */
  if (logitem->agent == NULL)
    logitem->agent = FUNC0 ("-");

  /* testing log only */
  if (dry_run)
    goto cleanup;

  ignorelevel = FUNC6 (glog, logitem);
  /* ignore line */
  if (ignorelevel == IGNORE_LEVEL_PANEL)
    goto cleanup;

  if (FUNC9 (logitem))
    logitem->is_404 = 1;
  else if (FUNC10 (logitem->req))
    logitem->is_static = 1;

  logitem->uniq_key = FUNC5 (logitem);

  FUNC7 (glog, logitem->resp_size);
  FUNC12 (logitem);

  /* don't ignore line but neither count as valid */
  if (ignorelevel != IGNORE_LEVEL_REQ)
    FUNC3 (glog);

cleanup:
  FUNC4 (logitem);

  return ret;
}