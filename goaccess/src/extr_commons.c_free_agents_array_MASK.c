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
struct TYPE_4__ {int size; struct TYPE_4__* items; struct TYPE_4__* agent; } ;
typedef  TYPE_1__ GAgents ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1 (GAgents * agents)
{
  int i;

  if (agents == NULL)
    return;

  /* clean stuff up */
  for (i = 0; i < agents->size; ++i)
    FUNC0 (agents->items[i].agent);
  if (agents->items)
    FUNC0 (agents->items);
  FUNC0 (agents);
}