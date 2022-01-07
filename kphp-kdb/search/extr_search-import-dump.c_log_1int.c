
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {long type; long a; } ;


 struct lev_generic* write_alloc (int) ;

void log_1int (long type, long arg) {
  struct lev_generic *L = write_alloc (8);
  L->type = type;
  L->a = arg;
}
