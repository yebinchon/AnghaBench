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
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ pid; int showChildren; } ;
typedef  TYPE_1__ Process ;
typedef  int /*<<< orphan*/  Panel ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(Panel* panel) {
   Process* p = (Process*) FUNC1(panel);
   if (!p) return false;
   pid_t ppid = FUNC4(p);
   for (int i = 0; i < FUNC3(panel); i++) {
      Process* q = (Process*) FUNC0(panel, i);
      if (q->pid == ppid) {
         q->showChildren = false;
         FUNC2(panel, i);
         return true;
      }
   }
   return false;
}