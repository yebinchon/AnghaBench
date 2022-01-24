#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int kernel; scalar_t__ is_lwp; } ;
typedef  TYPE_1__ SolarisProcess ;
typedef  int /*<<< orphan*/  Process ;

/* Variables and functions */

bool FUNC0(Process* this) {
   SolarisProcess* fp = (SolarisProcess*) this;

   if (fp->kernel == 1 ) {
      return 1;
   } else if (fp->is_lwp) {
      return 1;
   } else {
      return 0;
   }
}