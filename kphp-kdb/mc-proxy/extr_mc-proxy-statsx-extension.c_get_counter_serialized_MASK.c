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
struct statsx_gather_extra {int views; int unique_visitors; int deletes; int created_at; int valid_until; int* visitors_sex; int /*<<< orphan*/  visitors_source; int /*<<< orphan*/  visitors_geoip_countries; int /*<<< orphan*/  visitors_countries; int /*<<< orphan*/  visitors_cities; int /*<<< orphan*/  visitors_sex_age; int /*<<< orphan*/  visitors_section; int /*<<< orphan*/  visitors_polit; int /*<<< orphan*/  visitors_mstatus; int /*<<< orphan*/  visitors_age; int /*<<< orphan*/  subcnt; } ;

/* Variables and functions */
 int MAX_AGE ; 
 int MAX_CITIES ; 
 int MAX_COUNTRIES ; 
 int MAX_GEOIP_COUNTRIES ; 
 int MAX_MSTATUS ; 
 int MAX_POLIT ; 
 int MAX_SECTION ; 
 int MAX_SEX_AGE ; 
 int MAX_SOURCE ; 
 int MAX_SUBCOUNTER ; 
 scalar_t__ Q_bad_servers ; 
 scalar_t__ Q_raw ; 
 int bad_servers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (char*,struct statsx_gather_extra*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC7 (char*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char*,struct statsx_gather_extra*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC10 (char *buffer, struct statsx_gather_extra *C) {
  FUNC4 (C->visitors_cities, MAX_CITIES);
  if (Q_raw) {
    return FUNC1 (buffer, C);
  }
  int cnt = 6 + (Q_bad_servers != 0);
  char *ptr = buffer;
  if (!FUNC2 (C->visitors_age, MAX_AGE)) { cnt++; }
  if (!FUNC2 (C->visitors_mstatus, MAX_MSTATUS)) { cnt++; }
  if (!FUNC2 (C->visitors_polit, MAX_POLIT)) { cnt++; }
  if (!FUNC2 (C->visitors_section, MAX_SECTION)) { cnt++; }
  if (!FUNC3 (C->visitors_cities, 2 * MAX_CITIES)) { cnt++; }
  if (!FUNC2 (C->visitors_sex_age, MAX_SEX_AGE)) { cnt++; }
  if (!FUNC2 (C->visitors_countries, 2 * MAX_COUNTRIES)) { cnt++; }
  if (!FUNC2 (C->visitors_geoip_countries, 2 * MAX_GEOIP_COUNTRIES)) { cnt++; }
  if (!FUNC2 (C->visitors_source, MAX_SOURCE)) { cnt++; }
  if (!FUNC2 (C->subcnt, MAX_SUBCOUNTER)) { cnt++; }
  ptr += FUNC9 (ptr, "a:%d:{s:5:\"views\";i:%d;s:8:\"visitors\";i:%d;s:7:\"deletes\";i:%d;"
    "s:7:\"created\";i:%d;s:7:\"expires\";i:%d;"
    "s:3:\"sex\";a:2:{i:1;i:%d;i:2;i:%d;}", 
    cnt, C->views, C->unique_visitors, C->deletes, C->created_at, C->valid_until, 
    C->visitors_sex[0], C->visitors_sex[1]);
  if (Q_bad_servers) {
    ptr += FUNC9 (ptr, "s:11:\"bad_servers\";i:%d;", bad_servers);
  }
  ptr = FUNC5 (ptr, "age", C->visitors_age, MAX_AGE); 
  ptr = FUNC5 (ptr, "marital_status", C->visitors_mstatus, MAX_MSTATUS); 
  ptr = FUNC5 (ptr, "political_views", C->visitors_polit, MAX_POLIT); 
  ptr = FUNC5 (ptr, "section", C->visitors_section, MAX_SECTION); 
  ptr = FUNC5 (ptr, "sex_age", C->visitors_sex_age, MAX_SEX_AGE); 
  ptr = FUNC6 (ptr, "cities", C->visitors_cities, MAX_CITIES);
  ptr = FUNC7 (ptr, "countries", C->visitors_countries, MAX_COUNTRIES);
  ptr = FUNC7 (ptr, "geoip_countries", C->visitors_geoip_countries, MAX_GEOIP_COUNTRIES);
  ptr = FUNC5 (ptr, "sources", C->visitors_source, MAX_SOURCE);
  ptr = FUNC8 (ptr, C);
  *ptr++ = '}';
  *ptr = 0;
  if (verbosity >= 4) {
    FUNC0 (stderr, "%s\n", buffer);
  }
  return ptr - buffer;
}