
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator {int x; } ;



__attribute__((used)) static inline void it_heap_relax (struct iterator **H, int HN, struct iterator *cur) {
  int i = 1, j, x = cur->x;
  while (1) {
    j = (i << 1);
    if (j > HN) {
      break;
    }
    if (j < HN && H[j+1]->x > H[j]->x) {
      j++;
    }
    if (x >= H[j]->x) {
      break;
    }
    H[i] = H[j];
    i = j;
  }
  H[i] = cur;
}
