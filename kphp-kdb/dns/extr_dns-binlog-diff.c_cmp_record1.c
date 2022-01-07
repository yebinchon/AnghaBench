
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ age; } ;
typedef TYPE_1__ record_t ;


 int cmp_record0 (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int cmp_record1 (const void *x, const void *y) {
  record_t *a = (record_t *) x;
  record_t *b = (record_t *) y;
  const int c = cmp_record0 (a, b);
  if (c) { return c; }
  if (a->age < b->age) { return -1; }
  if (a->age > b->age) { return 1; }
  return 0;
}
