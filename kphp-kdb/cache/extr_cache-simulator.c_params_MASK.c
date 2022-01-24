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
struct TYPE_2__ {int /*<<< orphan*/  default_file_size; int /*<<< orphan*/  download_speed; int /*<<< orphan*/  disk_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amortization_counters_initialization_string ; 
 int /*<<< orphan*/  delay_between_priority_lists_requests ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_using_greedy_strategy ; 
 int /*<<< orphan*/  optimization ; 
 TYPE_1__ simulation_params ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6 (void) {
  FUNC4 (stderr, "disk_size\t%d(%d)\n", simulation_params.disk_size, FUNC5 (simulation_params.disk_size));
  FUNC4 (stderr, "download_speed\t%d(%d/sec)\n", simulation_params.download_speed, FUNC5 (simulation_params.download_speed));
  FUNC1(delay_between_priority_lists_requests);
  FUNC4 (stderr, "default_file_size\t%d(%d)\n", simulation_params.default_file_size, FUNC5 (simulation_params.default_file_size));
  FUNC0(init_using_greedy_strategy);
  FUNC2(amortization_counters_initialization_string);
  FUNC0(optimization);
  FUNC3 (stderr);
}