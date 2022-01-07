
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_univcity {int uni_country; int uni_city; } ;


 int LEV_TARG_UNIVCITY ;
 struct lev_univcity* alloc_log_event (int ,int,int) ;
 int get_user (int) ;
 int set_country_city (struct lev_univcity*) ;

int do_set_country_city (int user_id, int country, int city) {
  if (country < 0 || country >= 256 || city < 0 || !get_user (user_id)) {
    return 0;
  }
  struct lev_univcity *E = alloc_log_event (LEV_TARG_UNIVCITY, 16, user_id);
  E->uni_country = country;
  E->uni_city = city;
  set_country_city (E);
  return 1;
}
