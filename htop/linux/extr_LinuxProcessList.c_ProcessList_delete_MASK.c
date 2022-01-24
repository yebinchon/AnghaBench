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
struct TYPE_3__ {scalar_t__ netlink_socket; struct TYPE_3__* ttyDrivers; struct TYPE_3__* path; struct TYPE_3__* cpus; } ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  TYPE_1__ LinuxProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(ProcessList* pl) {
   LinuxProcessList* this = (LinuxProcessList*) pl;
   FUNC0(pl);
   FUNC1(this->cpus);
   if (this->ttyDrivers) {
      for(int i = 0; this->ttyDrivers[i].path; i++) {
         FUNC1(this->ttyDrivers[i].path);
      }
      FUNC1(this->ttyDrivers);
   }
   #ifdef HAVE_DELAYACCT
   if (this->netlink_socket) {
      nl_close(this->netlink_socket);
      nl_socket_free(this->netlink_socket);
   }
   #endif
   FUNC1(this);
}