#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  item; int /*<<< orphan*/  module; } ;
struct TYPE_9__ {TYPE_2__* data; } ;
typedef  TYPE_1__ GSLList ;
typedef  int /*<<< orphan*/  GModule ;
typedef  TYPE_2__ GColors ;
typedef  int /*<<< orphan*/  GColorItem ;

/* Variables and functions */
 int /*<<< orphan*/  color_list ; 
 int /*<<< orphan*/  find_color_item_module_in_list ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 

GColors *
FUNC4 (GColorItem item, GModule module)
{
  GColors *needle = FUNC3 (), *color = NULL;
  GSLList *match = NULL;

  needle->module = module;
  needle->item = item;

  /* find color for specific item/module pair */
  if ((match = FUNC2 (color_list, find_color_item_module_in_list, needle)))
    color = match->data;

  /* attempt to find color by item (fallback) */
  if (!color)
    color = FUNC1 (item);
  FUNC0 (needle);

  return color;
}