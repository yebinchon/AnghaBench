#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  UsersTable ;
struct TYPE_7__ {int cpuCount; } ;
struct TYPE_6__ {void* cpus; int /*<<< orphan*/  kd; } ;
typedef  TYPE_1__ SolarisProcessList ;
typedef  TYPE_2__ ProcessList ;
typedef  int /*<<< orphan*/  Hashtable ;
typedef  int /*<<< orphan*/  CPUData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SolarisProcess ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_ONLN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 void* FUNC5 (void*,int) ; 

ProcessList* FUNC6(UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   SolarisProcessList* spl = FUNC4(1, sizeof(SolarisProcessList));
   ProcessList* pl = (ProcessList*) spl;
   FUNC1(pl, FUNC0(SolarisProcess), usersTable, pidWhiteList, userId);

   spl->kd = FUNC2();

   pl->cpuCount = FUNC3(_SC_NPROCESSORS_ONLN);

   if (pl->cpuCount == 1 ) {
      spl->cpus = FUNC5(spl->cpus, sizeof(CPUData));
   } else {
      spl->cpus = FUNC5(spl->cpus, (pl->cpuCount + 1) * sizeof(CPUData));
   }

   return pl;
}