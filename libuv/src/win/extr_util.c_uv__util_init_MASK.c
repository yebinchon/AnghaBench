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
struct TYPE_3__ {double QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 double hrtime_interval_ ; 
 int /*<<< orphan*/  process_title_lock ; 

void FUNC2(void) {
  LARGE_INTEGER perf_frequency;

  /* Initialize process title access mutex. */
  FUNC0(&process_title_lock);

  /* Retrieve high-resolution timer frequency
   * and precompute its reciprocal.
   */
  if (FUNC1(&perf_frequency)) {
    hrtime_interval_ = 1.0 / perf_frequency.QuadPart;
  } else {
    hrtime_interval_= 0;
  }
}