#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * next; int /*<<< orphan*/ * prev; int /*<<< orphan*/  module; int /*<<< orphan*/ * metrics; } ;
typedef  TYPE_1__ GSubItem ;
typedef  int /*<<< orphan*/  GModule ;
typedef  int /*<<< orphan*/  GMetrics ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

__attribute__((used)) static GSubItem *
FUNC1 (GModule module, GMetrics * nmetrics)
{
  GSubItem *sub_item = FUNC0 (sizeof (GSubItem));

  sub_item->metrics = nmetrics;
  sub_item->module = module;
  sub_item->prev = NULL;
  sub_item->next = NULL;

  return sub_item;
}