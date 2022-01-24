#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int pid; } ;
struct TYPE_7__ {int /*<<< orphan*/  processes; int /*<<< orphan*/  processTable; } ;
typedef  TYPE_1__ ProcessList ;
typedef  TYPE_2__ Process ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  Process_pidCompare ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(ProcessList* this, Process* p) {
   FUNC6(FUNC4(this->processes, p, Process_pidCompare) != -1);
   FUNC6(FUNC1(this->processTable, p->pid) != NULL);
   Process* pp = FUNC2(this->processTable, p->pid);
   FUNC6(pp == p); (void)pp;
   unsigned int pid = p->pid;
   int idx = FUNC4(this->processes, p, Process_pidCompare);
   FUNC6(idx != -1);
   if (idx >= 0) FUNC5(this->processes, idx);
   FUNC6(FUNC1(this->processTable, pid) == NULL); (void)pid;
   FUNC6(FUNC0(this->processTable) == FUNC3(this->processes));
}