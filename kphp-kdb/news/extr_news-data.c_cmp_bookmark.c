
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bookmark {scalar_t__ next; scalar_t__ value; scalar_t__ y; } ;



__attribute__((used)) static inline int cmp_bookmark (struct bookmark *x, struct bookmark *y) {
  if (x->next < y->next) {
    return -1;
  } else if (x->next > y->next) {
    return 1;
  } else if (x->value < y->value) {
    return -1;
  } else if (x->value > y->value) {
    return 1;
  } else if (x->y < y->y) {
    return -1;
  } else if (x->y > y->y) {
    return 1;
  } else {
    return 0;
  }
}
