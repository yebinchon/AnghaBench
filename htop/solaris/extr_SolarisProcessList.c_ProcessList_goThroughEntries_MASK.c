#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int kernelThreads; } ;
typedef  TYPE_1__ ProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  PR_WALK_LWP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SolarisProcessList_walkproc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC3(ProcessList* this) {
   FUNC0(this);
   FUNC1(this);
   this->kernelThreads = 1;
   FUNC2(&SolarisProcessList_walkproc, this, PR_WALK_LWP);
}