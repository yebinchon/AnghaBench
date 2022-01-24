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
struct TYPE_5__ {struct TYPE_5__* values; struct TYPE_5__* caption; struct TYPE_5__* drawData; } ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ Meter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(Object* cast) {
   if (!cast)
      return;
   Meter* this = (Meter*) cast;
   if (FUNC1(this)) {
      FUNC0(this);
   }
   FUNC2(this->drawData);
   FUNC2(this->caption);
   FUNC2(this->values);
   FUNC2(this);
}