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
struct TYPE_6__ {int param; int /*<<< orphan*/  values; TYPE_1__* pl; } ;
struct TYPE_5__ {int cpuCount; } ;
typedef  TYPE_2__ Meter ;

/* Variables and functions */
 int CPU_METER_ITEMCOUNT ; 
 double FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC3(Meter* this, char* buffer, int size) {
   int cpu = this->param;
   if (cpu > this->pl->cpuCount) {
      FUNC2(buffer, size, "absent");
      return;
   }
   FUNC1(this->values, 0, sizeof(double) * CPU_METER_ITEMCOUNT);
   double percent = FUNC0(this, cpu);
   FUNC2(buffer, size, "%5.1f%%", percent);
}