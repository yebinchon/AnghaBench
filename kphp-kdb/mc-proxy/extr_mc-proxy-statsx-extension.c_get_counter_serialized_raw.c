
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statsx_gather_extra {int visitors_source; int visitors_geoip_countries; int visitors_countries; int visitors_cities; int visitors_sex_age; int visitors_section; int visitors_polit; int visitors_mstatus; int visitors_age; int visitors_sex; int valid_until; int created_at; int deletes; int unique_visitors; int views; } ;


 int MAX_AGE ;
 int MAX_CITIES ;
 int MAX_COUNTRIES ;
 int MAX_GEOIP_COUNTRIES ;
 int MAX_MSTATUS ;
 int MAX_POLIT ;
 int MAX_SECTION ;
 int MAX_SEX ;
 int MAX_SOURCE ;
 int* serialize_list2_raw_new (int*,int ,int ) ;
 int* serialize_list2a_raw (int*,int ,int ) ;
 int* serialize_list_raw (int*,int ,int) ;
 int* serialize_subcnt_list_raw (int*,struct statsx_gather_extra*) ;

int get_counter_serialized_raw (char *buffer, struct statsx_gather_extra *C) {
  int *ptr = (int *)buffer;
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
  ptr = serialize_list2_raw_new (ptr, C->visitors_cities, MAX_CITIES);
  ptr = serialize_list2a_raw (ptr, C->visitors_countries, MAX_COUNTRIES);
  ptr = serialize_list2a_raw (ptr, C->visitors_geoip_countries, MAX_GEOIP_COUNTRIES);
  ptr = serialize_list_raw (ptr, C->visitors_source, MAX_SOURCE);
  ptr = serialize_subcnt_list_raw (ptr, C);
  return (char *)ptr - buffer;
}
