#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * cpus; int /*<<< orphan*/ * cp_times_n; int /*<<< orphan*/ * cp_times_o; int /*<<< orphan*/ * cp_time_n; int /*<<< orphan*/ * cp_time_o; scalar_t__ jails; scalar_t__ kd; } ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  TYPE_1__ DragonFlyBSDProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(ProcessList* this) {
   const DragonFlyBSDProcessList* dfpl = (DragonFlyBSDProcessList*) this;
   if (dfpl->kd) FUNC3(dfpl->kd);

   if (dfpl->jails) {
      FUNC0(dfpl->jails);
   }
   FUNC2(dfpl->cp_time_o);
   FUNC2(dfpl->cp_time_n);
   FUNC2(dfpl->cp_times_o);
   FUNC2(dfpl->cp_times_n);
   FUNC2(dfpl->cpus);

   FUNC1(this);
   FUNC2(this);
}