#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* data; struct TYPE_5__* next; } ;
typedef  TYPE_1__ GSLList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

int
FUNC1 (GSLList ** list, GSLList * node)
{
  GSLList **current = list, *next = NULL;
  for (; *current; current = &(*current)->next) {
    if ((*current) != node)
      continue;

    next = (*current)->next;
    if ((*current)->data)
      FUNC0 ((*current)->data);
    FUNC0 (*current);
    *current = next;
    return 0;
  }
  return 1;
}