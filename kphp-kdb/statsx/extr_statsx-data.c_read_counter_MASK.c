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
struct counter {scalar_t__ prev; int type; int long_unique_visitors; int last_month_unique_visitors; int last_week_unique_visitors; int /*<<< orphan*/  visitors; int /*<<< orphan*/  timezone; void** subcnt; void* mask_subcnt; void* visitors_source; void* visitors_geoip_countries; void* visitors_countries; void* visitors_sex_age; void* visitors_cities; void* visitors_section; void* visitors_polit; void* visitors_mstatus; void* visitors_age; scalar_t__ visitors_sex; void* valid_until; void* created_at; void* deletes; void* unique_visitors; void* views; void* counter_id; } ;

/* Variables and functions */
 scalar_t__ FORCE_COUNTER_TYPE ; 
 int /*<<< orphan*/  MAX_AGE ; 
 int /*<<< orphan*/  MAX_MSTATUS ; 
 int /*<<< orphan*/  MAX_POLIT ; 
 int /*<<< orphan*/  MAX_SECTION ; 
 int /*<<< orphan*/  MAX_SEX_AGE ; 
 int /*<<< orphan*/  MAX_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (void*) ; 
 int index_version ; 
 int FUNC3 (void*) ; 
 struct counter* FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 () ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  stderr ; 
 void** FUNC14 (int) ; 

struct counter* FUNC15 (int readtree) {
  int i,j;
  struct counter *C = FUNC4 (0, -1);
  FUNC0 (C->prev == 0);
  if (index_version >= 4) {
    C->counter_id = FUNC11 ();
  } else {
    C->counter_id = FUNC10 ();
  }
  C->created_at = FUNC10 ();
  C->type = FUNC10 ();
  if (FORCE_COUNTER_TYPE) {
    C->type = (C->type & 0xffff0000) | FUNC2 (C->counter_id);
  }
  C->views = FUNC10 ();
  C->unique_visitors = FUNC10 ();
  C->deletes = FUNC10 ();
  C->created_at = FUNC10 ();
  C->valid_until = FUNC10 ();
  if (index_version >= 3) {
    C->long_unique_visitors = FUNC10 ();
    C->last_month_unique_visitors = FUNC10 ();
    C->last_week_unique_visitors = FUNC10 ();
  } else if (index_version >= 2) {
    C->long_unique_visitors = FUNC10 ();
    C->last_month_unique_visitors = FUNC10 ();
    C->last_week_unique_visitors = -1;
  } else {
    C->long_unique_visitors = -1;
    C->last_month_unique_visitors = -1;
    C->last_week_unique_visitors = FUNC10 ();
  }
  FUNC8 ((char *)C->visitors_sex, sizeof (int) * 2);
  int flag = FUNC10 ();
  if (flag & (1 << 0)) { C->visitors_age = FUNC5 (MAX_AGE); }
  if (flag & (1 << 1)) { C->visitors_mstatus = FUNC5 (MAX_MSTATUS); }
  if (flag & (1 << 2)) { C->visitors_polit = FUNC5 (MAX_POLIT); }
  if (flag & (1 << 3)) { C->visitors_section = FUNC5 (MAX_SECTION); }
  if (flag & (1 << 4)) { C->visitors_cities = FUNC6 (); }
  if (flag & (1 << 5)) { C->visitors_sex_age = FUNC5 (MAX_SEX_AGE); }
  if (flag & (1 << 6)) { C->visitors_countries = FUNC6 (); }
  if (flag & (1 << 7)) { C->visitors_geoip_countries = FUNC6 (); }
  if (flag & (1 << 8)) { C->visitors_source = FUNC5 (MAX_SOURCE); }
  if (index_version == 0) {
    int t = FUNC10 ();
    if (t > 0) {
      FUNC1 (stderr, "Dropping old data about subcounters.\n");
    }
    FUNC12 (t * sizeof (int));
    C->mask_subcnt = 0;
  } else {
    C->mask_subcnt = FUNC11();
  }
  j = FUNC3(C->mask_subcnt);
  if (j > 0) {
    C->subcnt = FUNC14(sizeof(int) * j);
    for(i=0; i < j; i++) {
      C->subcnt[i] = FUNC10();
    }
  }

  //C->subcnt_number = readin_int ();
  //if (C->subcnt_number) { C->subcnt = read_list (C->subcnt_number); }
  C->timezone = FUNC9 ();
  if (readtree) { C->visitors = FUNC7 (); }
  else { FUNC13 (); }
  FUNC0 (C->prev == 0);
  return C;
}