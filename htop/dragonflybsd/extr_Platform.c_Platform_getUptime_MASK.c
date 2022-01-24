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
struct timeval {int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  bootTime ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_BOOTTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int*,int,struct timeval*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3() {
   struct timeval bootTime, currTime;
   int mib[2] = { CTL_KERN, KERN_BOOTTIME };
   size_t size = sizeof(bootTime);

   int err = FUNC2(mib, 2, &bootTime, &size, NULL, 0);
   if (err) {
      return -1;
   }
   FUNC1(&currTime, NULL);

   return (int) FUNC0(currTime.tv_sec, bootTime.tv_sec);
}