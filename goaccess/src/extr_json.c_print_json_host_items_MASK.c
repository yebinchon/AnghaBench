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
struct TYPE_6__ {scalar_t__ list_agents; } ;
struct TYPE_5__ {int /*<<< orphan*/ * sub_list; } ;
typedef  int /*<<< orphan*/  GPercTotals ;
typedef  int /*<<< orphan*/  GJSON ;
typedef  TYPE_1__ GHolderItem ;

/* Variables and functions */
 TYPE_4__ conf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2 (GJSON * json, GHolderItem * item, GPercTotals totals,
                       int size, int iisp)
{
  (void) totals;
  /* print geolocation fields */
  if (size > 0 && item->sub_list != NULL)
    FUNC0 (json, item->sub_list, iisp);

  /* print list of user agents */
  if (conf.list_agents)
    FUNC1 (json, item, iisp);
}