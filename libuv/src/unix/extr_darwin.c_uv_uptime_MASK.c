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
typedef  double time_t ;
struct timeval {double tv_sec; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
#define  CTL_KERN 129 
#define  KERN_BOOTTIME 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int*,int,struct timeval*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(double* uptime) {
  time_t now;
  struct timeval info;
  size_t size = sizeof(info);
  static int which[] = {CTL_KERN, KERN_BOOTTIME};

  if (FUNC1(which, 2, &info, &size, NULL, 0))
    return FUNC0(errno);

  now = FUNC2(NULL);
  *uptime = now - info.tv_sec;

  return 0;
}