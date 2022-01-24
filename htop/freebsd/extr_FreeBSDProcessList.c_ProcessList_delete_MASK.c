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
struct TYPE_2__ {int /*<<< orphan*/ * cpus; int /*<<< orphan*/ * cp_times_n; int /*<<< orphan*/ * cp_times_o; int /*<<< orphan*/ * cp_time_n; int /*<<< orphan*/ * cp_time_o; scalar_t__ kd; } ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  TYPE_1__ FreeBSDProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(ProcessList* this) {
   const FreeBSDProcessList* fpl = (FreeBSDProcessList*) this;
   if (fpl->kd) FUNC2(fpl->kd);

   FUNC1(fpl->cp_time_o);
   FUNC1(fpl->cp_time_n);
   FUNC1(fpl->cp_times_o);
   FUNC1(fpl->cp_times_n);
   FUNC1(fpl->cpus);

   FUNC0(this);
   FUNC1(this);
}