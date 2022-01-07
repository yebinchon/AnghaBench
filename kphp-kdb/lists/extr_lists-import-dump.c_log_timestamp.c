
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {unsigned int a; int type; } ;


 int LEV_TIMESTAMP ;
 struct lev_generic* write_alloc (int) ;

void log_timestamp (unsigned timestamp) {
  struct lev_generic *L = write_alloc (8);
  L->type = LEV_TIMESTAMP;
  L->a = timestamp;
}
