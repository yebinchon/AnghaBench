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
struct counter {int type; int long_unique_visitors; int last_week_unique_visitors; int views; int unique_visitors; int deletes; int created_at; int valid_until; int* visitors_sex; scalar_t__ mask_subcnt; int /*<<< orphan*/  visitors_source; int /*<<< orphan*/ * visitors_geoip_countries; int /*<<< orphan*/ * visitors_countries; int /*<<< orphan*/ * visitors_cities; int /*<<< orphan*/  visitors_sex_age; int /*<<< orphan*/  visitors_section; int /*<<< orphan*/  visitors_polit; int /*<<< orphan*/  visitors_mstatus; int /*<<< orphan*/  visitors_age; } ;

/* Variables and functions */
 int MAX_AGE ; 
 int MAX_MSTATUS ; 
 int MAX_POLIT ; 
 int MAX_SECTION ; 
 int MAX_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,struct counter*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (struct counter *C, char *buffer) {
  char *ptr = buffer;
  if (!C) { return 0; }
  if (C->type == -2) return -2;
  int cnt = 6 + (C->long_unique_visitors >= 0) + (C->last_week_unique_visitors >= 0);
  if (C->visitors_age) { cnt++; }
  if (C->visitors_mstatus) { cnt++; }
  if (C->visitors_polit) { cnt++; }
  if (C->visitors_section) { cnt++; }
  if (C->visitors_cities) { cnt++; }
  if (C->visitors_sex_age) { cnt++; }
  if (C->visitors_countries) { cnt++; }
  if (C->visitors_geoip_countries) { cnt++; }
  if (C->visitors_source) { cnt++; }
  if (C->mask_subcnt) { cnt++; }
  ptr += FUNC5 (ptr, "a:%d:{s:5:\"views\";i:%d;s:8:\"visitors\";i:%d;s:7:\"deletes\";i:%d;"
    "s:7:\"created\";i:%d;s:7:\"expires\";i:%d;"
    "s:3:\"sex\";a:2:{i:1;i:%d;i:2;i:%d;}", 
    cnt, C->views, C->unique_visitors, C->deletes, C->created_at, C->valid_until,
    C->visitors_sex[0], C->visitors_sex[1]);
  if (C->long_unique_visitors >= 0) {
    ptr += FUNC5 (ptr, "s:26:\"last_month_unique_visitors\";i:%d;", C->long_unique_visitors);
  }
  if (C->last_week_unique_visitors >= 0) {
    ptr += FUNC5 (ptr, "s:25:\"last_week_unique_visitors\";i:%d;", C->last_week_unique_visitors);
  }
  if (C->visitors_age) { 
    ptr = FUNC1 (ptr, "age", C->visitors_age, MAX_AGE); 
  }
  if (C->visitors_mstatus) { 
    ptr = FUNC1 (ptr, "marital_status", C->visitors_mstatus, MAX_MSTATUS); 
  }
  if (C->visitors_polit) { 
    ptr = FUNC1 (ptr, "political_views", C->visitors_polit, MAX_POLIT); 
  }
  if (C->visitors_section) { 
    ptr = FUNC1 (ptr, "section", C->visitors_section, MAX_SECTION); 
  }
  if (C->visitors_sex_age) { 
    ptr = FUNC1 (ptr, "sex_age", C->visitors_sex_age, MAX_AGE * 2); 
  }
  if (C->visitors_cities) {
    ptr = FUNC2 (ptr, "cities", C->visitors_cities, C->visitors_cities[-1]);
  }
  if (C->visitors_countries) {
    ptr = FUNC3 (ptr, "countries", C->visitors_countries, C->visitors_countries[-1]);
  }
  if (C->visitors_geoip_countries) {
    ptr = FUNC3 (ptr, "geoip_countries", C->visitors_geoip_countries, C->visitors_geoip_countries[-1]);
  }
  if (C->visitors_source) {
    ptr = FUNC1 (ptr, "sources", C->visitors_source, MAX_SOURCE);
  }
  if (C->mask_subcnt) {
    ptr = FUNC4 (ptr, C);
  }
  *ptr++ = '}';
  *ptr = 0;
  if (verbosity >= 4) {
    FUNC0 (stderr, "%s\n", buffer);
  }
  return ptr - buffer;
}