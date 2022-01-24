#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ignore_panel_idx; int /*<<< orphan*/  ignore_panels; int /*<<< orphan*/  log_format; } ;

/* Variables and functions */
 int /*<<< orphan*/  REMOTE_USER ; 
 int TOTAL_MODULES ; 
 int /*<<< orphan*/  VIRTUAL_HOSTS ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void
FUNC3 (void)
{
  int ignore_panel_idx = conf.ignore_panel_idx;

  /* Remove virtual host panel if no '%v' within log format */
  if (!conf.log_format)
    return;

  if (!FUNC2 (conf.log_format, "%v") && ignore_panel_idx < TOTAL_MODULES) {
    if (FUNC1 ("VIRTUAL_HOSTS", conf.ignore_panels, ignore_panel_idx) < 0)
      FUNC0 (VIRTUAL_HOSTS);
  }
  if (!FUNC2 (conf.log_format, "%e") && ignore_panel_idx < TOTAL_MODULES) {
    if (FUNC1 ("REMOTE_USER", conf.ignore_panels, ignore_panel_idx) < 0)
      FUNC0 (REMOTE_USER);
  }
}