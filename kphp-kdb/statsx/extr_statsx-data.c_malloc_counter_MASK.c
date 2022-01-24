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
struct counter {long long counter_id; int created_at; int last_month_unique_visitors; int long_unique_visitors; int last_week_unique_visitors; int valid_until; int /*<<< orphan*/  type; struct counter* prev; int /*<<< orphan*/  timezone; } ;

/* Variables and functions */
 scalar_t__ FORCE_COUNTER_TYPE ; 
 scalar_t__ auto_create_new_versions ; 
 int /*<<< orphan*/  FUNC0 (struct counter*,struct counter*) ; 
 scalar_t__ create_day_start ; 
 scalar_t__ custom_version_names ; 
 int /*<<< orphan*/  default_timezone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 
 int incr_version ; 
 int now ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tot_counters_allocated ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int verbosity ; 
 struct counter* FUNC4 (int) ; 

__attribute__((used)) static struct counter *FUNC5 (struct counter *D, long long cnt_id) {
  if (verbosity >= 4) {
    FUNC1 (stderr, "Allocating new counter\n");
  }
  struct counter *C = FUNC4 (sizeof (struct counter));
  if (!C) return C;
  tot_counters_allocated++;
  C->counter_id = cnt_id;
  C->prev = 0;
  C->timezone = default_timezone;
  if (D) {
    FUNC0 (C, D);
  }
  if (create_day_start) {
    C->created_at = now - (now + FUNC3 (C->timezone)) % 86400;
  } else {
    C->created_at = now;
  }
  C->last_month_unique_visitors = -1;
  C->long_unique_visitors = -1;
  C->last_week_unique_visitors = -1;
  if (auto_create_new_versions) {
    C->valid_until = now - (now + FUNC3 (C->timezone)) % 86400 + 86400;
  } else {
    C->valid_until = 0x7fffffff;
  }
  if (custom_version_names) {
    C->created_at = incr_version;
  }
  C->prev = D;
  if (!D || FORCE_COUNTER_TYPE) {
    C->type = FUNC2 (cnt_id);
  }
  if (verbosity >= 4) {
    FUNC1 (stderr, "New counter allocated\n");
  }
  return C;
}