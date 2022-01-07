
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_len; int data; } ;
typedef TYPE_1__ record_t ;


 int cmp_record0 (TYPE_1__*,TYPE_1__*) ;
 int cmp_str (int ,int ,int ,int ) ;

__attribute__((used)) static int cmp_record2 (const void *x, const void *y) {
  record_t *a = (record_t *) x;
  record_t *b = (record_t *) y;
  const int c = cmp_record0 (a, b);
  if (c) { return c; }
  return cmp_str (a->data, a->data_len, b->data, b->data_len);
}
