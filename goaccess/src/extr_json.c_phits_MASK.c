#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ json_pretty_print; } ;
struct TYPE_4__ {int /*<<< orphan*/  hits_perc; int /*<<< orphan*/  hits; } ;
typedef  TYPE_1__ GMetrics ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (GJSON * json, GMetrics * nmetrics, int sp)
{
  int isp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1;

  FUNC1 (json, "hits", sp);
  /* print hits */
  FUNC3 (json, "count", nmetrics->hits, isp, 0);
  /* print hits percent */
  FUNC2 (json, "percent", nmetrics->hits_perc, isp, 1);
  FUNC0 (json, sp, 0);
}