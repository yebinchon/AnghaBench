
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {unsigned int type; unsigned int a; unsigned int b; unsigned int c; } ;


 unsigned int LEV_LI_SET_ENTRY ;
 struct lev_generic* write_alloc (int) ;

void log_11_set (unsigned l, unsigned e, unsigned value, unsigned flags) {
  struct lev_generic *L = write_alloc (16);
  L->type = LEV_LI_SET_ENTRY + flags;
  L->a = l;
  L->b = e;
  L->c = value;
}
