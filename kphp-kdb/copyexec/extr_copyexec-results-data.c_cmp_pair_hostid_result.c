
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pair_hostid_result {scalar_t__ result; } ;



__attribute__((used)) static int cmp_pair_hostid_result (const void *a, const void *b) {
  const struct pair_hostid_result *x = (const struct pair_hostid_result *) a;
  const struct pair_hostid_result *y = (const struct pair_hostid_result *) b;
  if (x->result < y->result) {
    return -1;
  }
  if (x->result > y->result) {
    return 1;
  }
  return 0;
}
