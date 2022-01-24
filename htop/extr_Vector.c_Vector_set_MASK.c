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
struct TYPE_5__ {int items; int /*<<< orphan*/ ** array; scalar_t__ owner; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Vector ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(Vector* this, int idx, void* data_) {
   Object* data = data_;
   FUNC4(idx >= 0);
   FUNC4(FUNC1((Object*)data, this->type));
   FUNC4(FUNC3(this));

   FUNC2(this);
   if (idx >= this->items) {
      this->items = idx+1;
   } else {
      if (this->owner) {
         Object* removed = this->array[idx];
         FUNC4 (removed != NULL);
         if (this->owner) {
            FUNC0(removed);
         }
      }
   }
   this->array[idx] = data;
   FUNC4(FUNC3(this));
}