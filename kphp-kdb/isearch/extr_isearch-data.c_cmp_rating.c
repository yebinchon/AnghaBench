
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* ratings ;

int cmp_rating (const void * _a, const void * _b) {
  int a = *(int *)_a, b = *(int *)_b;
  if (ratings[a] > ratings[b]) {
    return -1;
  }
  return ratings[a] < ratings[b];
}
