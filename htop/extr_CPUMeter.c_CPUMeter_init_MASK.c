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
typedef  int /*<<< orphan*/  caption ;
struct TYPE_6__ {int param; TYPE_1__* pl; } ;
struct TYPE_5__ {int cpuCount; int /*<<< orphan*/  settings; } ;
typedef  TYPE_2__ Meter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Meter* this) {
   int cpu = this->param;
   if (this->pl->cpuCount > 1) {
      char caption[10];
      FUNC2(caption, sizeof(caption), "%-3d", FUNC1(this->pl->settings, cpu - 1));
      FUNC0(this, caption);
   }
   if (this->param == 0)
      FUNC0(this, "Avg");
}