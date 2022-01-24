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
struct TYPE_4__ {int /*<<< orphan*/  redraw_expand; int /*<<< orphan*/  chart_reverse; int /*<<< orphan*/  chart_type; int /*<<< orphan*/  chart_lbl; int /*<<< orphan*/  chart_key; } ;
typedef  TYPE_1__ GHTMLPlot ;
typedef  int /*<<< orphan*/  GChart ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC6 (FILE * fp, const GHTMLPlot plot, GChart * chart, int n, int sp)
{
  int isp = 0, iisp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1, iisp = sp + 2;

  FUNC4 (fp, "className", plot.chart_key, isp, 0);
  FUNC4 (fp, "label", plot.chart_lbl, isp, 0);
  FUNC4 (fp, "chartType", FUNC0 (plot.chart_type), isp, 0);
  FUNC3 (fp, "chartReverse", plot.chart_reverse, isp, 0);
  FUNC3 (fp, "redrawOnExpand", plot.redraw_expand, isp, 0);

  /* D3.js data */
  FUNC2 (fp, "d3", isp);
  /* print chart definitions */
  FUNC5 (fp, chart, n, iisp);
  /* close D3 */
  FUNC1 (fp, isp, 1);
}