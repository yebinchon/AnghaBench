#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uahash_t ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ pattern_t ;
typedef  int /*<<< orphan*/  ip_t ;
typedef  int byte ;
struct TYPE_5__ {TYPE_1__** first; } ;

/* Variables and functions */
 int ANTISPAM_DB_FIELDS_FLAGS ; 
 int ANTISPAM_DB_FIELDS_IDS ; 
 int /*<<< orphan*/  antispam_db_request ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__ heap_pattern ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__) ; 
 int /*<<< orphan*/  stats_all_matches_cnt ; 
 int /*<<< orphan*/  stats_matches_cnt ; 
 int /*<<< orphan*/  stats_matches_max ; 
 int stats_matches_sum ; 

int FUNC6 (ip_t ip, uahash_t uahash, const char *text, byte fields, int limit) {
  int matches_cnt = 0;
  if (limit >= 0) {
    matches_cnt = FUNC1 (ip, uahash, text, limit);
  } else {
    matches_cnt = FUNC0 (ip, uahash, text, -limit);
  }

  FUNC4 (antispam_db_request, 0);
  pattern_t **first = heap_pattern.first;
  pattern_t **last  = first + FUNC5 (heap_pattern);
  for (; first != last; ++first) {
    if (fields & ANTISPAM_DB_FIELDS_IDS) {
      FUNC3 (antispam_db_request, (*first)->id);
    }
    if (fields & ANTISPAM_DB_FIELDS_FLAGS) {
      FUNC3 (antispam_db_request, (*first)->flags);
    }
  }

  ++stats_all_matches_cnt;
  if (matches_cnt != 0) {
    ++stats_matches_cnt;
    stats_matches_sum += matches_cnt;
    FUNC2 (stats_matches_max, matches_cnt);
  }
  return matches_cnt;
}