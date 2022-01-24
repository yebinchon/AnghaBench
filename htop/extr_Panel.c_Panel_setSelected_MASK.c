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
struct TYPE_5__ {int selected; int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ Panel ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_SET_SELECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(Panel* this, int selected) {
   FUNC3 (this != NULL);

   int size = FUNC2(this->items);
   if (selected >= size) {
      selected = size - 1;
   }
   if (selected < 0)
      selected = 0;
   this->selected = selected;
   if (FUNC1(this)) {
      FUNC0(this, EVENT_SET_SELECTED);
   }
}