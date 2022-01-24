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
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {int tag; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ Process ;
typedef  int /*<<< orphan*/  Panel ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Panel* panel, Process* parent) {
   parent->tag = true;
   pid_t ppid = parent->pid;
   for (int i = 0; i < FUNC1(panel); i++) {
      Process* p = (Process*) FUNC0(panel, i);
      if (!p->tag && FUNC2(p, ppid)) {
         FUNC3(panel, p);
      }
   }
}