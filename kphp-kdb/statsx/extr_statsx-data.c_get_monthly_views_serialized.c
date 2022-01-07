
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {struct counter* prev; int created_at; scalar_t__ views; } ;


 scalar_t__ Q_raw ;
 struct counter* get_counter_f (long long,int ) ;
 int get_month (int ) ;
 int get_monthly_views_serialized_raw (char*,long long) ;
 int get_year (int ) ;
 int load_counter (long long,int ,int) ;
 int sprintf (char*,char*,...) ;

int get_monthly_views_serialized (char *buffer, long long counter_id) {
  if (load_counter (counter_id, 0, 1) == -2) {
    return -2;
  }
  if (Q_raw) {
    return get_monthly_views_serialized_raw (buffer, counter_id);
  }
  char *ptr = buffer;
  struct counter *C = get_counter_f (counter_id, 0);
  int r = 0;
  int current_month_views = 0;
  while (C) {

    current_month_views += C->views;
    if (!C->prev || get_month (C->created_at) != get_month (C->prev->created_at) || get_year (C->created_at) != get_year (C->prev->created_at)) {
      if (r) {
        ptr += sprintf (ptr, ",");
      } else {
        r = 1;
      }
      int m = get_month (C->created_at);
      int y = get_year (C->created_at);

      m ++;
      ptr += sprintf (ptr, "%d,%d,%d", current_month_views, m, y);
      current_month_views = 0;

    }

    C = C->prev;
  }
  return ptr - buffer;
}
