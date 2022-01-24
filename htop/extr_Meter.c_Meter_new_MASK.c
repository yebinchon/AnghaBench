#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ProcessList_ {int dummy; } ;
struct TYPE_11__ {int h; int param; int /*<<< orphan*/  caption; int /*<<< orphan*/  total; void* values; struct ProcessList_* pl; } ;
struct TYPE_10__ {int curItems; int maxItems; int /*<<< orphan*/  defaultMode; int /*<<< orphan*/  caption; int /*<<< orphan*/  total; } ;
typedef  TYPE_1__ MeterClass ;
typedef  TYPE_2__ Meter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

Meter* FUNC6(struct ProcessList_* pl, int param, MeterClass* type) {
   Meter* this = FUNC4(1, sizeof(Meter));
   FUNC3(this, type);
   this->h = 1;
   this->param = param;
   this->pl = pl;
   type->curItems = type->maxItems;
   this->values = FUNC4(type->maxItems, sizeof(double));
   this->total = type->total;
   this->caption = FUNC5(type->caption);
   if (FUNC1(this))
      FUNC0(this);
   FUNC2(this, type->defaultMode);
   return this;
}