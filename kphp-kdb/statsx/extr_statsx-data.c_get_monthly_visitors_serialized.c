
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter {int type; scalar_t__ last_month_unique_visitors; int created_at; struct counter* prev; } ;


 int COUNTER_TYPE_MONTH ;
 scalar_t__ Q_raw ;
 int fprintf (int ,char*,int,int,int) ;
 struct counter* get_counter_f (long long,int ) ;
 int get_month (int) ;
 int get_monthly_visitors_serialized_raw (char*,long long) ;
 int get_year (int) ;
 int load_counter (long long,int ,int) ;
 int sprintf (char*,char*,...) ;
 int stderr ;
 int verbosity ;

int get_monthly_visitors_serialized (char *buffer, long long counter_id) {
  if (load_counter (counter_id, 0, 1) == -2) {
    return -2;
  }
  if (Q_raw) {
    return get_monthly_visitors_serialized_raw (buffer, counter_id);
  }
  char *ptr = buffer;
  struct counter *C = get_counter_f (counter_id, 0);
  int r = 0;
  int first = 1;
  while (C) {

    if (first && !(C->type & COUNTER_TYPE_MONTH) && C->last_month_unique_visitors >= 0) {
      int m = get_month (C->created_at);
      int y = get_year (C->created_at);
      m ++;
      r = 1;
      ptr += sprintf (ptr, "%d,%d,%d", C->last_month_unique_visitors, m, y);
      first = 0;
    }
    if (verbosity >= 2) {
      if (C->type & COUNTER_TYPE_MONTH) {
        int m = get_month (C->created_at);
        int y = get_year (C->created_at);
        fprintf (stderr, "%d:%d:%d\n", m, y, C->created_at);
      }
    }
    if ((C->type & COUNTER_TYPE_MONTH) && C->last_month_unique_visitors >= 0) {
      if (first) {
        int m = get_month (C->created_at);
        int y = get_year (C->created_at);
        m ++;
        r = 1;
        ptr += sprintf (ptr, "%d,%d,%d", 0, m, y);
        first = 0;
      }
      if (r) {
        ptr += sprintf (ptr, ",");
      } else {
        r = 1;
      }
      int m = get_month (C->created_at);
      int y = get_year (C->created_at);

      if (!m) {
        m = 12;
        y--;
      }
      ptr += sprintf (ptr, "%d,%d,%d", C->last_month_unique_visitors, m, y);

    }

    C = C->prev;
  }
  return ptr - buffer;
}
