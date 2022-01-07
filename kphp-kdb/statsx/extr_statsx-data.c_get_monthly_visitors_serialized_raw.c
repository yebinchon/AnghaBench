
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; struct counter* prev; int last_month_unique_visitors; int created_at; } ;


 int COUNTER_TYPE_MONTH ;
 struct counter* get_counter_f (long long,int ) ;
 int get_month (int ) ;
 int get_year (int ) ;
 int load_counter (long long,int ,int) ;

int get_monthly_visitors_serialized_raw (char *buffer, long long counter_id) {
  if (load_counter (counter_id, 0, 1) == -2) {
    return -2;
  }
  int *ptr = (int *)buffer;
  struct counter *C = get_counter_f (counter_id, 0);
  int first = 1;
  while (C) {

    if (first && !(C->type & COUNTER_TYPE_MONTH) && C->last_month_unique_visitors >= 0) {
      int m = get_month (C->created_at);
      int y = get_year (C->created_at);
      m ++;
      *(ptr ++) = y * 100 + m;
      *(ptr ++) = C->last_month_unique_visitors;
      first = 0;
    }
    if ((C->type & COUNTER_TYPE_MONTH) && C->last_month_unique_visitors >= 0) {
      if (first) {
        int m = get_month (C->created_at);
        int y = get_year (C->created_at);
        m ++;
        *(ptr ++) = y * 100 + m;
        *(ptr ++) = 0;
        first = 0;
      }
      int m = get_month (C->created_at);
      int y = get_year (C->created_at);

      if (!m) {
        m = 12;
        y--;
      }
      *(ptr ++) = y * 100 + m;
      *(ptr ++) = C->last_month_unique_visitors;

    }

    C = C->prev;
  }
  return ((char *)ptr) - buffer;
}
