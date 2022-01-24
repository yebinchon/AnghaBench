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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ force_write_index ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  last_reindex_on_low_memory_time ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  reindex_on_low_memory ; 

void FUNC7 (void) {
  FUNC1 ();
  FUNC2 ();
  FUNC4 ();
  FUNC6 ();
  if (!reindex_on_low_memory && FUNC5 ()) {
    force_write_index ++;
    reindex_on_low_memory ++;
    last_reindex_on_low_memory_time = now;
  }
  if (force_write_index) {
    FUNC3 ();
  }
  FUNC0();
}