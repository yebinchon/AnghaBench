
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int visitors_source; int * visitors_geoip_countries; int * visitors_countries; int * visitors_cities; int visitors_sex_age; int visitors_section; int visitors_polit; int visitors_mstatus; int visitors_age; int visitors_sex; int valid_until; int created_at; int deletes; int unique_visitors; int views; } ;


 int MAX_AGE ;
 int MAX_MSTATUS ;
 int MAX_POLIT ;
 int MAX_SECTION ;
 int MAX_SEX ;
 int MAX_SOURCE ;
 int* serialize_list2_raw (int*,int *,int ) ;
 int* serialize_list2a_raw (int*,int *,int ) ;
 int* serialize_list_raw (int*,int ,int) ;
 int* serialize_subcnt_list_raw (int*,struct counter*) ;

int counter_serialize_raw (struct counter *C, char *buffer) {
  if (!C) { return 0; }
  int *ptr = (void *)buffer;
  *(ptr++) = C->views;
  *(ptr++) = C->unique_visitors;
  *(ptr++) = C->deletes;
  *(ptr++) = C->created_at;
  *(ptr++) = C->valid_until;
  ptr = serialize_list_raw (ptr, C->visitors_sex, MAX_SEX);
  ptr = serialize_list_raw (ptr, C->visitors_age, MAX_AGE);
  ptr = serialize_list_raw (ptr, C->visitors_mstatus, MAX_MSTATUS);
  ptr = serialize_list_raw (ptr, C->visitors_polit, MAX_POLIT);
  ptr = serialize_list_raw (ptr, C->visitors_section, MAX_SECTION);
  ptr = serialize_list_raw (ptr, C->visitors_sex_age, MAX_AGE * 2);
  ptr = serialize_list2_raw (ptr, C->visitors_cities, C->visitors_cities ? C->visitors_cities[-1] : 0);
  ptr = serialize_list2a_raw (ptr, C->visitors_countries, C->visitors_countries ? C->visitors_countries[-1] : 0);
  ptr = serialize_list2a_raw (ptr, C->visitors_geoip_countries, C->visitors_geoip_countries ? C->visitors_geoip_countries[-1] : 0);
  ptr = serialize_list_raw (ptr, C->visitors_source, MAX_SOURCE);
  ptr = serialize_subcnt_list_raw (ptr, C);
  return (char *)ptr - buffer;
}
