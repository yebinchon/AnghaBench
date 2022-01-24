#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  UsersTable ;
struct TYPE_4__ {int topologyOk; int following; int /*<<< orphan*/  topology; scalar_t__ cpuCount; void* processes2; int /*<<< orphan*/  userId; int /*<<< orphan*/ * pidWhiteList; int /*<<< orphan*/ * usersTable; int /*<<< orphan*/  processTable; void* processes; } ;
typedef  TYPE_1__ ProcessList ;
typedef  int /*<<< orphan*/  ObjectClass ;
typedef  int /*<<< orphan*/  Hashtable ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

ProcessList* FUNC4(ProcessList* this, ObjectClass* klass, UsersTable* usersTable, Hashtable* pidWhiteList, uid_t userId) {
   this->processes = FUNC1(klass, true, DEFAULT_SIZE);
   this->processTable = FUNC0(140, false);
   this->usersTable = usersTable;
   this->pidWhiteList = pidWhiteList;
   this->userId = userId;
   
   // tree-view auxiliary buffer
   this->processes2 = FUNC1(klass, true, DEFAULT_SIZE);
   
   // set later by platform-specific code
   this->cpuCount = 0;

#ifdef HAVE_LIBHWLOC
   this->topologyOk = false;
   int topoErr = hwloc_topology_init(&this->topology);
   if (topoErr == 0) {
      topoErr = hwloc_topology_load(this->topology);
   }
   if (topoErr == 0) {
      this->topologyOk = true;
   }
#endif

   this->following = -1;

   return this;
}