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
struct TYPE_2__ {scalar_t__ t; } ;

/* Variables and functions */
 int /*<<< orphan*/  binlog_disabled ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  cron_acounter_update_calls ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ get_top_access_stat ; 

__attribute__((used)) static void FUNC6 (void) {
  FUNC3 ();
  if (get_top_access_stat.t) {
    cron_acounter_update_calls += FUNC0 (500);
  }
  if (!binlog_disabled) {
    FUNC1 (500);
  }
  FUNC5 ();
  FUNC4 ();
  FUNC2 ();
}