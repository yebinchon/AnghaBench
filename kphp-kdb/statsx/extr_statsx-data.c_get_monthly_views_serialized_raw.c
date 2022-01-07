
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {struct counter* prev; int created_at; scalar_t__ views; } ;


 struct counter* get_counter_f (long long,int ) ;
 int get_month (int ) ;
 int get_year (int ) ;
 int load_counter (long long,int ,int) ;

int get_monthly_views_serialized_raw (char *buffer, long long counter_id) {
  if (load_counter (counter_id, 0, 1) == -2) {
    return -2;
  }
  int *ptr = (int *)buffer;
  struct counter *C = get_counter_f (counter_id, 0);
  int current_month_views = 0;
  while (C) {

    current_month_views += C->views;
    if (!C->prev || get_month (C->created_at) != get_month (C->prev->created_at) || get_year (C->created_at) != get_year (C->prev->created_at)) {
      int m = get_month (C->created_at);
      int y = get_year (C->created_at);

      m ++;
      *(ptr ++) = y * 100 + m;
      *(ptr ++) = current_month_views;
      current_month_views = 0;

    }

    C = C->prev;
  }
  return ((char *)ptr) - buffer;
}
