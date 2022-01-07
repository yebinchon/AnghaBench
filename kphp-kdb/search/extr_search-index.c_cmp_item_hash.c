
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;


 long long get_hash_item (struct item const*) ;

int cmp_item_hash (const void *a, const void *b) {
  long long c = get_hash_item (* ((const struct item **) a));
  long long d = get_hash_item (* ((const struct item **) b));
  if (c < d) { return -1; }
  if (c > d) { return 1; }
  return 0;
}
