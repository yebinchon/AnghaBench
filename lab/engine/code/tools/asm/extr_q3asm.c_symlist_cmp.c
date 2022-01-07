
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
typedef TYPE_1__ symbol_t ;



__attribute__((used)) static int symlist_cmp (const void *e1, const void *e2)
{
  const symbol_t *a, *b;

  a = *(const symbol_t **)e1;
  b = *(const symbol_t **)e2;

  return ( a->value - b->value);
}
