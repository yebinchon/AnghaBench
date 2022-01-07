
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct news_item {scalar_t__ weight; } ;



int compare_weight (const void *a, const void *b) {
  const struct news_item *A = a;
  const struct news_item *B = b;
  if (A->weight < B->weight) { return 1; }
  if (A->weight > B->weight) { return -1; }
  return 0;
}
