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
struct TYPE_3__ {scalar_t__ kd; struct TYPE_3__* cpus; } ;
typedef  TYPE_1__ SolarisProcessList ;
typedef  int /*<<< orphan*/  ProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(ProcessList* pl) {
   SolarisProcessList* spl = (SolarisProcessList*) pl;
   FUNC0(pl);
   FUNC1(spl->cpus);
   if (spl->kd) FUNC2(spl->kd);
   FUNC1(spl);
}