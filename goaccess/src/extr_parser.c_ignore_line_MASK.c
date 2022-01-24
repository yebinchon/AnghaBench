#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ignore_statics; scalar_t__ ignore_qstr; } ;
struct TYPE_5__ {int /*<<< orphan*/  req; int /*<<< orphan*/  status; int /*<<< orphan*/  site; int /*<<< orphan*/  agent; } ;
typedef  TYPE_1__ GLogItem ;
typedef  int /*<<< orphan*/  GLog ;

/* Variables and functions */
 int IGNORE_LEVEL_PANEL ; 
 TYPE_4__ conf ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (GLog * glog, GLogItem * logitem)
{
  if (FUNC0 (glog, logitem) == 0)
    return IGNORE_LEVEL_PANEL;
  if (FUNC1 (logitem->agent) == 0)
    return IGNORE_LEVEL_PANEL;
  if (FUNC2 (logitem->site))
    return IGNORE_LEVEL_PANEL;
  if (FUNC4 (logitem->status))
    return IGNORE_LEVEL_PANEL;
  if (FUNC3 (logitem->req))
    return conf.ignore_statics; // IGNORE_LEVEL_PANEL or IGNORE_LEVEL_REQ

  /* check if we need to remove the request's query string */
  if (conf.ignore_qstr)
    FUNC5 (logitem->req);

  return 0;
}