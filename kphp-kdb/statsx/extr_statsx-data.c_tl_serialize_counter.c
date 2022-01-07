
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int valid_until; int created_at; int deletes; int last_week_unique_visitors; int last_month_unique_visitors; int visitors_sex_age; int unique_visitors; int views; int visitors_source; int visitors_countries; int visitors_geoip_countries; int visitors_cities; int visitors_section; int visitors_polit; int visitors_mstatus; int visitors_age; int visitors_sex; } ;


 int MAX_AGE ;
 int MAX_MSTATUS ;
 int MAX_POLIT ;
 int MAX_SECTION ;
 int MAX_SEX ;
 int MAX_SEX_AGE ;
 int MAX_SOURCE ;
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
 int assert (struct counter*) ;
 int tl_serialize_list (int ,int ) ;
 int tl_serialize_list_2 (int ) ;
 int tl_serialize_list_2a (int ) ;
 int tl_serialize_subcnt_list (struct counter*) ;
 int tl_store_int (int ) ;

void tl_serialize_counter (struct counter *C, int mode) {
  assert (C);
  if (mode & TL_STATSX_SEX) {
    tl_serialize_list (C->visitors_sex, MAX_SEX);
  }
  if (mode & TL_STATSX_AGE) {
    tl_serialize_list (C->visitors_age, MAX_AGE);
  }
  if (mode & TL_STATSX_MSTATUS) {
    tl_serialize_list (C->visitors_mstatus, MAX_MSTATUS);
  }
  if (mode & TL_STATSX_POLIT) {
    tl_serialize_list (C->visitors_polit, MAX_POLIT);
  }
  if (mode & TL_STATSX_SECTION) {
    tl_serialize_list (C->visitors_section, MAX_SECTION);
  }
  if (mode & TL_STATSX_CITY) {
    tl_serialize_list_2 (C->visitors_cities);
  }
  if (mode & TL_STATSX_GEOIP_COUNTRY) {
    tl_serialize_list_2a (C->visitors_geoip_countries);
  }
  if (mode & TL_STATSX_COUNTRY) {
    tl_serialize_list_2a (C->visitors_countries);
  }
  if (mode & TL_STATSX_SOURCE) {
    tl_serialize_list (C->visitors_source, MAX_SOURCE);
  }
  if (mode & TL_STATSX_VIEWS) {
    tl_store_int (C->views);
  }
  if (mode & TL_STATSX_VISITORS) {
    tl_store_int (C->unique_visitors);
  }
  if (mode & TL_STATSX_SEX_AGE) {
    tl_serialize_list (C->visitors_sex_age, MAX_SEX_AGE);
  }
  if (mode & TL_STATSX_MONTHLY) {
    tl_store_int (C->last_month_unique_visitors);
  }
  if (mode & TL_STATSX_WEEKLY) {
    tl_store_int (C->last_week_unique_visitors);
  }
  if (mode & TL_STATSX_DELETES) {
    tl_store_int (C->deletes);
  }
  if (mode & TL_STATSX_VERSION) {
    tl_store_int (C->created_at);
  }
  if (mode & TL_STATSX_EXPIRES) {
    tl_store_int (C->valid_until);
  }
  if (mode & TL_STATSX_EXTRA) {
    tl_serialize_subcnt_list (C);
  }
}
