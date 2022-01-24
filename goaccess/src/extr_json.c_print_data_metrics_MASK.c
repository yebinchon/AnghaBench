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
struct GPanel_ {int /*<<< orphan*/  (* subitems ) (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_7__ {scalar_t__ json_pretty_print; } ;
struct TYPE_6__ {int /*<<< orphan*/  metrics; } ;
struct TYPE_5__ {int idx; int /*<<< orphan*/  sub_items_size; TYPE_2__* items; } ;
typedef  int /*<<< orphan*/  GPercTotals ;
typedef  int /*<<< orphan*/  GMetrics ;
typedef  int /*<<< orphan*/  GJSON ;
typedef  TYPE_1__ GHolder ;

/* Variables and functions */
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8 (GJSON * json, GHolder * h, GPercTotals totals, int sp,
                    const struct GPanel_ *panel)
{
  GMetrics *nmetrics;
  int i, isp = 0, iisp = 0, iiisp = 0;

  /* use tabs to prettify output */
  if (conf.json_pretty_print)
    isp = sp + 1, iisp = sp + 2, iiisp = sp + 3;

  FUNC3 (json, "data", isp);
  /* output data metrics */
  for (i = 0; i < h->idx; i++) {
    FUNC6 (h->items[i].metrics, &nmetrics, totals);

    /* open data metric block */
    FUNC4 (json, iisp);
    /* output data metric block */
    FUNC5 (json, nmetrics, iiisp);
    /* if there are children nodes, spit them out */
    if (panel->subitems)
      panel->subitems (json, h->items + i, totals, h->sub_items_size, iiisp);
    /* close data metric block */
    FUNC2 (json, iisp, (i == h->idx - 1));

    FUNC0 (nmetrics);
  }
  FUNC1 (json, isp, 1);
}