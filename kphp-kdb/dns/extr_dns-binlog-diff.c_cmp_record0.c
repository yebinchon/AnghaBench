
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ qtype; int name_len; int name; } ;
typedef TYPE_1__ record_t ;


 int cmp_str (int ,int ,int ,int ) ;

__attribute__((used)) static inline int cmp_record0 (record_t *a, record_t *b) {
  const int c = cmp_str (a->name, a->name_len, b->name, b->name_len);
  if (c) { return c; }
  if (a->qtype < b->qtype) { return -1; }
  if (a->qtype > b->qtype) { return 1; }
  return 0;
}
