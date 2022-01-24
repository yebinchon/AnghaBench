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

/* Variables and functions */
 int /*<<< orphan*/  access_miss_counters ; 
 int /*<<< orphan*/  access_success_counters ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  convert_miss_counters ; 
 int /*<<< orphan*/  convert_success_counters ; 

void FUNC1 (void) {
  FUNC0 (convert_success_counters);
  FUNC0 (convert_miss_counters);
  FUNC0 (access_success_counters);
  FUNC0 (access_miss_counters);
}