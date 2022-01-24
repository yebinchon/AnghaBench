#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double tv_sec; int tv_usec; } ;
struct TYPE_3__ {double tv_sec; int tv_usec; } ;
struct rusage {TYPE_2__ ru_stime; TYPE_1__ ru_utime; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUSAGE_SELF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rusage*) ; 

__attribute__((used)) static double FUNC1 (void) {
  struct rusage r;
  if (FUNC0 (RUSAGE_SELF, &r)) { return 0.0; }
  return r.ru_utime.tv_sec + r.ru_stime.tv_sec + 1e-6 * (r.ru_utime.tv_usec + r.ru_stime.tv_usec);
}