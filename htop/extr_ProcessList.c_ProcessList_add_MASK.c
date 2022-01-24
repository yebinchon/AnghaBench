#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pid; } ;
struct TYPE_8__ {int /*<<< orphan*/  processes; int /*<<< orphan*/  processTable; } ;
typedef  TYPE_1__ ProcessList ;
typedef  TYPE_2__ Process ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  Process_pidCompare ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(ProcessList* this, Process* p) {
   FUNC6(FUNC5(this->processes, p, Process_pidCompare) == -1);
   FUNC6(FUNC1(this->processTable, p->pid) == NULL);
   
   FUNC3(this->processes, p);
   FUNC2(this->processTable, p->pid, p);
   
   FUNC6(FUNC5(this->processes, p, Process_pidCompare) != -1);
   FUNC6(FUNC1(this->processTable, p->pid) != NULL);
   FUNC6(FUNC0(this->processTable) == FUNC4(this->processes));
}