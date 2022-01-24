#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bandwidth; scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {int /*<<< orphan*/  nbw; } ;
struct TYPE_6__ {int /*<<< orphan*/  bw_perc; TYPE_1__ bw; } ;
typedef  TYPE_2__ GMetrics ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 TYPE_4__ conf ; 
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

  if (!conf.bandwidth)
    return;

  FUNC1 (json, "bytes", sp);
  /* print bandwidth */
  FUNC3 (json, "count", nmetrics->bw.nbw, isp, 0);
  /* print bandwidth percent */
  FUNC2 (json, "percent", nmetrics->bw_perc, isp, 1);
  FUNC0 (json, sp, 0);
}