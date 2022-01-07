
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_birthday {int year; int day; int month; } ;


 int LEV_TARG_BIRTHDAY ;
 struct lev_birthday* alloc_log_event (int ,int,int) ;
 int get_user (int) ;
 int set_birthday (struct lev_birthday*) ;

int do_set_birthday (int user_id, int day, int month, int year) {
  if (day < 0 || day > 31 || month < 0 || month > 12 || (year < 1900 && year) || year > 2008 || !get_user (user_id)) {
    return 0;
  }
  struct lev_birthday *E = alloc_log_event (LEV_TARG_BIRTHDAY, 12, user_id);
  E->year = year;
  E->day = day;
  E->month = month;
  set_birthday (E);
  return 1;
}
