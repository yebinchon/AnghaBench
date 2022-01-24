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
struct TYPE_6__ {scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* metrics ) (int /*<<< orphan*/ *,TYPE_1__ const*,int) ;} ;
typedef  TYPE_1__ GHTML ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*,int) ; 

__attribute__((used)) static void
FUNC3 (FILE * fp, const GHTML * def, int sp)
{
  int isp = 0;
  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  /* open data metric data */
  FUNC1 (fp, "items", sp);
  /* definition metrics */
  def->metrics (fp, def, isp);
  /* close metrics block */
  FUNC0 (fp, sp, 1);
}