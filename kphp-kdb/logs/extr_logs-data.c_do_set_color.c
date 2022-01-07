
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_logs_set_color {long long field_value; int cnt; int and_mask; int xor_mask; } ;


 int FN ;
 scalar_t__ LEV_LOGS_SET_COLOR ;
 int MAX_COLOR_CNT ;
 struct lev_logs_set_color* alloc_log_event (scalar_t__,int,int ) ;
 int set_color (struct lev_logs_set_color*) ;

int do_set_color (int field_num, long long field_value, int cnt, int and_mask, int xor_mask) {
  if (field_num < 0 || field_num >= FN || cnt <= 0 || cnt >= MAX_COLOR_CNT) {
    return 0;
  }

  struct lev_logs_set_color *E =
    alloc_log_event (LEV_LOGS_SET_COLOR + field_num, sizeof (struct lev_logs_set_color), 0);

  E->field_value = field_value;
  E->cnt = cnt;
  E->and_mask = and_mask;
  E->xor_mask = xor_mask;

  return set_color (E);
}
