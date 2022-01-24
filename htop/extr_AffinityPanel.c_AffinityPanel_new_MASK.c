#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int used; int* cpus; } ;
struct TYPE_5__ {int cpuCount; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ ProcessList ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_2__ Affinity ;

/* Variables and functions */
 int /*<<< orphan*/  AffinityPanel ; 
 int /*<<< orphan*/  CheckItem ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

Panel* FUNC10(ProcessList* pl, Affinity* affinity) {
   Panel* this = FUNC5(1, 1, 1, 1, true, FUNC1(CheckItem), FUNC2("Set    ", "Cancel "));
   FUNC3(this, FUNC1(AffinityPanel));

   FUNC6(this, "Use CPUs:");
   int curCpu = 0;
   for (int i = 0; i < pl->cpuCount; i++) {
      char number[10];
      FUNC8(number, 9, "%d", FUNC7(pl->settings, i));
      bool mode;
      if (curCpu < affinity->used && affinity->cpus[curCpu] == i) {
         mode = true;
         curCpu++;
      } else {
         mode = false;
      }
      FUNC4(this, (Object*) FUNC0(FUNC9(number), mode));
   }
   return this;
}