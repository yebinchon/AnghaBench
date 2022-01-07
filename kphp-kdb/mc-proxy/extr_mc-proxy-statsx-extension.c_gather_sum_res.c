
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsx_gather_extra {int subcnt; int visitors_source; int visitors_geoip_countries; int visitors_countries; int visitors_cities; int visitors_sex_age; int visitors_section; int visitors_polit; int visitors_mstatus; int visitors_age; int visitors_sex; void* valid_until; void* created_at; int deletes; int unique_visitors; int views; } ;
struct gather_entry {int* data; } ;


 int MAX_AGE ;
 int MAX_CITIES ;
 int MAX_COUNTRIES ;
 int MAX_GEOIP_COUNTRIES ;
 int MAX_MSTATUS ;
 int MAX_POLIT ;
 int MAX_SECTION ;
 int MAX_SEX ;
 int MAX_SOURCE ;
 int MAX_SUBCOUNTER ;
 void* max (void*,int) ;
 int* unserialize_list2_raw (int*,int ,int ) ;
 int* unserialize_list2_raw_new (int*,int ,int ) ;
 int* unserialize_list_raw (int*,int ,int) ;

void gather_sum_res (struct gather_entry *e, struct statsx_gather_extra *C) {
  int *ptr = e->data;
  C->views += *(ptr++);
  C->unique_visitors += *(ptr++);
  C->deletes += *(ptr++);
  C->created_at = max (C->created_at, *ptr);
  ptr++;
  C->valid_until = max (C->valid_until, *ptr);
  ptr++;
  ptr = unserialize_list_raw (ptr, C->visitors_sex, MAX_SEX);
  ptr = unserialize_list_raw (ptr, C->visitors_age, MAX_AGE);
  ptr = unserialize_list_raw (ptr, C->visitors_mstatus, MAX_MSTATUS);
  ptr = unserialize_list_raw (ptr, C->visitors_polit, MAX_POLIT);
  ptr = unserialize_list_raw (ptr, C->visitors_section, MAX_SECTION);
  ptr = unserialize_list_raw (ptr, C->visitors_sex_age, MAX_AGE * 2);
  ptr = unserialize_list2_raw_new (ptr, C->visitors_cities, MAX_CITIES);
  ptr = unserialize_list2_raw (ptr, C->visitors_countries, MAX_COUNTRIES);
  ptr = unserialize_list2_raw (ptr, C->visitors_geoip_countries, MAX_GEOIP_COUNTRIES);
  ptr = unserialize_list_raw (ptr, C->visitors_source, MAX_SOURCE);
  ptr = unserialize_list_raw (ptr, C->subcnt, MAX_SUBCOUNTER);
}
