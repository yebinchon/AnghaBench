
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct event {int dummy; } ;
struct TYPE_3__ {size_t a; struct event** p; } ;
typedef TYPE_1__ min_heap_t ;


 scalar_t__ mm_realloc (struct event**,size_t) ;

int min_heap_reserve_(min_heap_t* s, size_t n)
{
 if (s->a < n)
 {
  struct event** p;
  size_t a = s->a ? s->a * 2 : 8;
  if (a < n)
   a = n;
  if (!(p = (struct event**)mm_realloc(s->p, a * sizeof *p)))
   return -1;
  s->p = p;
  s->a = a;
 }
 return 0;
}
