
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {unsigned int a; unsigned int b; unsigned int c; unsigned int d; unsigned int e; scalar_t__ type; } ;


 scalar_t__ LEV_LI_SET_ENTRY ;
 struct lev_generic* write_alloc (int) ;

void log_x22_set (unsigned l1, unsigned l2, unsigned e1, unsigned e2, unsigned value, unsigned char flags) {
  struct lev_generic *L = write_alloc (24);
  L->type = LEV_LI_SET_ENTRY + flags;
  L->a = l1;
  L->b = l2;
  L->c = e1;
  L->d = e2;
  L->e = value;
}
