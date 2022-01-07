
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {long type; long a; long b; } ;


 struct lev_generic* write_alloc (int) ;

void log_2ints (long type, long arg1, long arg2) {
  struct lev_generic *L = write_alloc (12);
  L->type = type;
  L->a = arg1;
  L->b = arg2;
}
