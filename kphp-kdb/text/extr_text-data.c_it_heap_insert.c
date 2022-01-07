
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator {int x; } ;



__attribute__((used)) static inline void it_heap_insert (struct iterator **H, int HN, struct iterator *cur) {
  int i = ++HN, j, x = cur->x;
  while (i > 1) {
    j = (i >> 1);
    if (H[j]->x >= x) {
      break;
    }
    H[i] = H[j];
    i = j;
  }
  H[i] = cur;
}
