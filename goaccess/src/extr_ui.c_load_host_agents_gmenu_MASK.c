#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * items; } ;
typedef  int /*<<< orphan*/  GSLList ;
typedef  TYPE_1__ GMenu ;
typedef  int /*<<< orphan*/  GItem ;

/* Variables and functions */
 int /*<<< orphan*/  fill_host_agents_gmenu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2 (void *list, void *user_data, int count)
{
  GSLList *lst = list;
  GMenu *menu = user_data;

  menu->items = (GItem *) FUNC1 (count, sizeof (GItem));
  FUNC0 (lst, fill_host_agents_gmenu, menu);
}