#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* type; scalar_t__ items; int /*<<< orphan*/  array; } ;
typedef  TYPE_2__ Vector ;
struct TYPE_5__ {int /*<<< orphan*/  compare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(Vector* this) {
   FUNC1(this->type->compare);
   FUNC1(FUNC0(this));
   FUNC2(this->array, 0, this->items - 1, this->type->compare);
   FUNC1(FUNC0(this));
}