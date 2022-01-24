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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1() {
  FUNC0 (stderr, "Debug utils: read news binlog and dumps logevents.\n");
  FUNC0 (stderr, "\t-p\tDumps log positions\n");
  FUNC0 (stderr, "\t-t\tDumps timestamps\n");
  FUNC0 (stderr, "\t-T[min_utime,max_utime]\tDump only part of binlog in given time interval.\n");
}