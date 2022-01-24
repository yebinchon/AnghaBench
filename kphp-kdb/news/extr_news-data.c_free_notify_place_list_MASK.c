#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; scalar_t__ owner; scalar_t__ place; struct TYPE_8__* pnext; } ;
typedef  TYPE_1__ userplace_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ owner; scalar_t__ place; int /*<<< orphan*/  allocated_items; int /*<<< orphan*/  total_items; scalar_t__ first; } ;
typedef  TYPE_2__ notify_place_t ;

/* Variables and functions */
 int NOTIFY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC3 (notify_place_t *V) {
  FUNC0 (NOTIFY_MODE);
  userplace_t *up = (userplace_t *) V->first, *uq;
  while (up != (userplace_t *) V) {
    uq = up->pnext;
    FUNC0 (up->type == V->type && up->owner == V->owner && up->place == V->place);
    FUNC2 (up, 0, V);
    FUNC1 (up, 0, V);
    up = uq;
  }
  FUNC0 (!V->total_items);
  FUNC0 (!V->allocated_items);
}