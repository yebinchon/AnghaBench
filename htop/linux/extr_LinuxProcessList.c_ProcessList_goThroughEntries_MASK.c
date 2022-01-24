#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  int /*<<< orphan*/  LinuxProcessList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double,struct timeval) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROCDIR ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 

void FUNC4(ProcessList* super) {
   LinuxProcessList* this = (LinuxProcessList*) super;

   FUNC2(super);
   double period = FUNC1(this);

   struct timeval tv;
   FUNC3(&tv, NULL);
   FUNC0(this, PROCDIR, NULL, period, tv);
}