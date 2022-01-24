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
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  last_collect_garbage_time ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5 (void) {
  FUNC0 ();
  FUNC2 ();
  if (!binlog_disabled) {
    FUNC4 (1);
  }
  FUNC1 ();
  last_collect_garbage_time = now;
  FUNC3 (100);
}