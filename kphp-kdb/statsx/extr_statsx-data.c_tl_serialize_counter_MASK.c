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
struct counter {int /*<<< orphan*/  valid_until; int /*<<< orphan*/  created_at; int /*<<< orphan*/  deletes; int /*<<< orphan*/  last_week_unique_visitors; int /*<<< orphan*/  last_month_unique_visitors; int /*<<< orphan*/  visitors_sex_age; int /*<<< orphan*/  unique_visitors; int /*<<< orphan*/  views; int /*<<< orphan*/  visitors_source; int /*<<< orphan*/  visitors_countries; int /*<<< orphan*/  visitors_geoip_countries; int /*<<< orphan*/  visitors_cities; int /*<<< orphan*/  visitors_section; int /*<<< orphan*/  visitors_polit; int /*<<< orphan*/  visitors_mstatus; int /*<<< orphan*/  visitors_age; int /*<<< orphan*/  visitors_sex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_AGE ; 
 int /*<<< orphan*/  MAX_MSTATUS ; 
 int /*<<< orphan*/  MAX_POLIT ; 
 int /*<<< orphan*/  MAX_SECTION ; 
 int /*<<< orphan*/  MAX_SEX ; 
 int /*<<< orphan*/  MAX_SEX_AGE ; 
 int /*<<< orphan*/  MAX_SOURCE ; 
 int TL_STATSX_AGE ; 
 int TL_STATSX_CITY ; 
 int TL_STATSX_COUNTRY ; 
 int TL_STATSX_DELETES ; 
 int TL_STATSX_EXPIRES ; 
 int TL_STATSX_EXTRA ; 
 int TL_STATSX_GEOIP_COUNTRY ; 
 int TL_STATSX_MONTHLY ; 
 int TL_STATSX_MSTATUS ; 
 int TL_STATSX_POLIT ; 
 int TL_STATSX_SECTION ; 
 int TL_STATSX_SEX ; 
 int TL_STATSX_SEX_AGE ; 
 int TL_STATSX_SOURCE ; 
 int TL_STATSX_VERSION ; 
 int TL_STATSX_VIEWS ; 
 int TL_STATSX_VISITORS ; 
 int TL_STATSX_WEEKLY ; 
 int /*<<< orphan*/  FUNC0 (struct counter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct counter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6 (struct counter *C, int mode) {
  FUNC0 (C);
  if (mode & TL_STATSX_SEX) {
    FUNC1 (C->visitors_sex, MAX_SEX);
  }
  if (mode & TL_STATSX_AGE) {
    FUNC1 (C->visitors_age, MAX_AGE);
  }
  if (mode & TL_STATSX_MSTATUS) {
    FUNC1 (C->visitors_mstatus, MAX_MSTATUS);
  }
  if (mode & TL_STATSX_POLIT) {
    FUNC1 (C->visitors_polit, MAX_POLIT);
  }
  if (mode & TL_STATSX_SECTION) {
    FUNC1 (C->visitors_section, MAX_SECTION);
  }
  if (mode & TL_STATSX_CITY) {
    FUNC2 (C->visitors_cities);
  }
  if (mode & TL_STATSX_GEOIP_COUNTRY) {
    FUNC3 (C->visitors_geoip_countries);
  }
  if (mode & TL_STATSX_COUNTRY) {
    FUNC3 (C->visitors_countries);
  }
  if (mode & TL_STATSX_SOURCE) {
    FUNC1 (C->visitors_source, MAX_SOURCE);
  }
  if (mode & TL_STATSX_VIEWS) {
    FUNC5 (C->views);
  }
  if (mode & TL_STATSX_VISITORS) {
    FUNC5 (C->unique_visitors);
  }
  if (mode & TL_STATSX_SEX_AGE) {
    FUNC1 (C->visitors_sex_age, MAX_SEX_AGE);
  }
  if (mode & TL_STATSX_MONTHLY) {
    FUNC5 (C->last_month_unique_visitors);
  }
  if (mode & TL_STATSX_WEEKLY) {
    FUNC5 (C->last_week_unique_visitors);
  }
  if (mode & TL_STATSX_DELETES) {
    FUNC5 (C->deletes);
  }
  if (mode & TL_STATSX_VERSION) {
    FUNC5 (C->created_at);
  }
  if (mode & TL_STATSX_EXPIRES) {
    FUNC5 (C->valid_until);
  }
  if (mode & TL_STATSX_EXTRA) {
    FUNC4 (C);
  }
}