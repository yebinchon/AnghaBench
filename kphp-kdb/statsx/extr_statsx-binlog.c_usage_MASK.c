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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2() {
  FUNC1 (stderr, "Debug utils: read stats binlog and dumps events for given counter.\n");
  FUNC1 (stderr, "\t-c [counter_id]\tDumps only logevent for given counter.\n");
  FUNC1 (stderr, "\t-l\tGenerate list of all used counters\n");
  FUNC1 (stderr, "\t-u\tGenerate list of active users (finding bots)\n");
  FUNC1 (stderr, "\t-S<start time>\n");
  FUNC1 (stderr, "\t-T<end time>\n");
  FUNC1 (stderr, "\t-i\tuse recent snapshot (for the case when first binlog was deleted)\n");
  FUNC0 (2);
}