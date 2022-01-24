#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_10__ {scalar_t__ pid; int showChildren; scalar_t__ indent; int /*<<< orphan*/  show; } ;
struct TYPE_9__ {int /*<<< orphan*/ * processes2; int /*<<< orphan*/ * processes; TYPE_1__* settings; } ;
struct TYPE_8__ {int direction; int sortKey; int /*<<< orphan*/  treeView; } ;
typedef  TYPE_2__ ProcessList ;
typedef  TYPE_3__ Process ;

/* Variables and functions */
 int PID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(ProcessList* this) {
   if (!this->settings->treeView) {
      FUNC4(this->processes);
   } else {
      // Save settings
      int direction = this->settings->direction;
      int sortKey = this->settings->sortKey;
      // Sort by PID
      this->settings->sortKey = PID;
      this->settings->direction = 1;
      FUNC5(this->processes);
      // Restore settings
      this->settings->sortKey = sortKey;
      this->settings->direction = direction;
      int vsize = FUNC6(this->processes);
      // Find all processes whose parent is not visible
      int size;
      while ((size = FUNC6(this->processes))) {
         int i;
         for (i = 0; i < size; i++) {
            Process* process = (Process*)(FUNC3(this->processes, i));
            // Immediately consume not shown processes
            if (!process->show) {
               process = (Process*)(FUNC7(this->processes, i));
               process->indent = 0;
               FUNC2(this->processes2, process);
               FUNC0(this, process->pid, 0, 0, direction, false);
               break;
            }
            pid_t ppid = FUNC1(process);
            // Bisect the process vector to find parent
            int l = 0, r = size;
            // If PID corresponds with PPID (e.g. "kernel_task" (PID:0, PPID:0)
            // on Mac OS X 10.11.6) cancel bisecting and regard this process as
            // root.
            if (process->pid == ppid)
               r = 0;
            while (l < r) {
               int c = (l + r) / 2;
               pid_t pid = ((Process*)(FUNC3(this->processes, c)))->pid;
               if (ppid == pid) {
                  break;
               } else if (ppid < pid) {
                  r = c;
               } else {
                  l = c + 1;
               }
            }
            // If parent not found, then construct the tree with this root
            if (l >= r) {
               process = (Process*)(FUNC7(this->processes, i));
               process->indent = 0;
               FUNC2(this->processes2, process);
               FUNC0(this, process->pid, 0, 0, direction, process->showChildren);
               break;
            }
         }
         // There should be no loop in the process tree
         FUNC8(i < size);
      }
      FUNC8(FUNC6(this->processes2) == vsize); (void)vsize;
      FUNC8(FUNC6(this->processes) == 0);
      // Swap listings around
      Vector* t = this->processes;
      this->processes = this->processes2;
      this->processes2 = t;
   }
}