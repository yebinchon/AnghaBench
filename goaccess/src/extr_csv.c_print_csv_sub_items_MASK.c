#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  module; TYPE_1__* items; } ;
struct TYPE_8__ {int /*<<< orphan*/  metrics; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* head; } ;
struct TYPE_6__ {TYPE_2__* sub_list; } ;
typedef  TYPE_2__ GSubList ;
typedef  TYPE_3__ GSubItem ;
typedef  int /*<<< orphan*/  GPercTotals ;
typedef  int /*<<< orphan*/  GMetrics ;
typedef  TYPE_4__ GHolder ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (FILE * fp, GHolder * h, int idx, GPercTotals totals)
{
  GMetrics *nmetrics;
  GSubList *sub_list = h->items[idx].sub_list;
  GSubItem *iter;

  int i = 0;

  if (sub_list == NULL)
    return;

  for (iter = sub_list->head; iter; iter = iter->next, i++) {
    FUNC4 (iter->metrics, &nmetrics, totals);

    FUNC0 (fp, "\"%d\",", i); /* idx */
    FUNC0 (fp, "\"%d\",", idx);       /* parent idx */
    FUNC0 (fp, "\"%s\",", FUNC2 (h->module));

    /* output metrics */
    FUNC3 (fp, nmetrics);
    FUNC1 (nmetrics);
  }
}