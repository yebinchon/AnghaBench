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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

double FUNC2 (void)
{
  uint32_t uptime_ms = FUNC0 ();
  uint32_t epoch_time = FUNC1 (uptime_ms);

  return ((double) epoch_time) * 1000.0;
}