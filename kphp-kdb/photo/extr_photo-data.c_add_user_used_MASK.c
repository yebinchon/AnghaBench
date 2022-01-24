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
struct TYPE_5__ {struct TYPE_5__* next_used; struct TYPE_5__* prev_used; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 TYPE_1__* LRU_head ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (user *u) {
  FUNC0 (u != NULL);
  FUNC0 (FUNC1 (u));

  FUNC0 (u->prev_used == NULL);
  FUNC0 (u->next_used == NULL);

  user *y = LRU_head->prev_used;

  u->next_used = LRU_head;
  LRU_head->prev_used = u;

  u->prev_used = y;
  y->next_used = u;
}