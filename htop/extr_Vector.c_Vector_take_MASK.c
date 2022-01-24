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
struct TYPE_4__ {int items; int /*<<< orphan*/ ** array; } ;
typedef  TYPE_1__ Vector ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

Object* FUNC2(Vector* this, int idx) {
   FUNC1(idx >= 0 && idx < this->items);
   FUNC1(FUNC0(this));
   Object* removed = this->array[idx];
   //assert (removed != NULL);
   this->items--;
   for (int i = idx; i < this->items; i++)
      this->array[i] = this->array[i+1];
   //this->array[this->items] = NULL;
   FUNC1(FUNC0(this));
   return removed;
}