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
struct TYPE_3__ {int needsRedraw; scalar_t__ selected; int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ Panel ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

Object* FUNC3(Panel* this, int i) {
   FUNC2 (this != NULL);

   this->needsRedraw = true;
   Object* removed = FUNC0(this->items, i);
   if (this->selected > 0 && this->selected >= FUNC1(this->items))
      this->selected--;
   return removed;
}