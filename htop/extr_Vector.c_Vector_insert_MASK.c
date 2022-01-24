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
struct TYPE_5__ {int items; int /*<<< orphan*/ ** array; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ Vector ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(Vector* this, int idx, void* data_) {
   Object* data = data_;
   FUNC3(idx >= 0);
   FUNC3(FUNC0(data, this->type));
   FUNC3(FUNC2(this));

   if (idx > this->items) {
      idx = this->items;
   }
   
   FUNC1(this);
   //assert(this->array[this->items] == NULL);
   for (int i = this->items; i > idx; i--) {
      this->array[i] = this->array[i-1];
   }
   this->array[idx] = data;
   this->items++;
   FUNC3(FUNC2(this));
}