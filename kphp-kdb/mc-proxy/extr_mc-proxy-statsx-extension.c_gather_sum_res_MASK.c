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
struct statsx_gather_extra {int /*<<< orphan*/  subcnt; int /*<<< orphan*/  visitors_source; int /*<<< orphan*/  visitors_geoip_countries; int /*<<< orphan*/  visitors_countries; int /*<<< orphan*/  visitors_cities; int /*<<< orphan*/  visitors_sex_age; int /*<<< orphan*/  visitors_section; int /*<<< orphan*/  visitors_polit; int /*<<< orphan*/  visitors_mstatus; int /*<<< orphan*/  visitors_age; int /*<<< orphan*/  visitors_sex; void* valid_until; void* created_at; int /*<<< orphan*/  deletes; int /*<<< orphan*/  unique_visitors; int /*<<< orphan*/  views; } ;
struct gather_entry {int* data; } ;

/* Variables and functions */
 int MAX_AGE ; 
 int /*<<< orphan*/  MAX_CITIES ; 
 int /*<<< orphan*/  MAX_COUNTRIES ; 
 int /*<<< orphan*/  MAX_GEOIP_COUNTRIES ; 
 int MAX_MSTATUS ; 
 int MAX_POLIT ; 
 int MAX_SECTION ; 
 int MAX_SEX ; 
 int MAX_SOURCE ; 
 int MAX_SUBCOUNTER ; 
 void* FUNC0 (void*,int) ; 
 int* FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC4 (struct gather_entry *e, struct statsx_gather_extra *C) {
  int *ptr = e->data;
  C->views += *(ptr++);
  C->unique_visitors += *(ptr++);
  C->deletes += *(ptr++);
  C->created_at = FUNC0 (C->created_at, *ptr);
  ptr++;
  C->valid_until = FUNC0 (C->valid_until, *ptr);
  ptr++;
  ptr = FUNC3 (ptr, C->visitors_sex, MAX_SEX);
  ptr = FUNC3 (ptr, C->visitors_age, MAX_AGE); 
  ptr = FUNC3 (ptr, C->visitors_mstatus, MAX_MSTATUS); 
  ptr = FUNC3 (ptr, C->visitors_polit, MAX_POLIT); 
  ptr = FUNC3 (ptr, C->visitors_section, MAX_SECTION); 
  ptr = FUNC3 (ptr, C->visitors_sex_age, MAX_AGE * 2); 
  ptr = FUNC2 (ptr, C->visitors_cities, MAX_CITIES);
  ptr = FUNC1 (ptr, C->visitors_countries, MAX_COUNTRIES);
  ptr = FUNC1 (ptr, C->visitors_geoip_countries, MAX_GEOIP_COUNTRIES);
  ptr = FUNC3 (ptr, C->visitors_source, MAX_SOURCE);
  ptr = FUNC3 (ptr, C->subcnt, MAX_SUBCOUNTER);
}