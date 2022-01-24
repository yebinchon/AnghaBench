#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int idx; scalar_t__ sub_items_size; int /*<<< orphan*/  module; TYPE_1__* items; } ;
struct TYPE_5__ {int /*<<< orphan*/  metrics; } ;
typedef  int /*<<< orphan*/  GPercTotals ;
typedef  int /*<<< orphan*/  GMetrics ;
typedef  TYPE_2__ GHolder ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (FILE * fp, GHolder * h, GPercTotals totals)
{
  GMetrics *nmetrics;
  int i;

  for (i = 0; i < h->idx; i++) {
    FUNC5 (h->items[i].metrics, &nmetrics, totals);

    FUNC0 (fp, "\"%d\",", i); /* idx */
    FUNC0 (fp, ",");  /* no parent */
    FUNC0 (fp, "\"%s\",", FUNC2 (h->module));

    /* output metrics */
    FUNC3 (fp, nmetrics);

    if (h->sub_items_size)
      FUNC4 (fp, h, i, totals);

    FUNC1 (nmetrics);
  }
}