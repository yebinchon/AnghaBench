
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashset_ll {unsigned int size; long long* h; } ;



int hashset_ll_get (struct hashset_ll *H, long long id) {
  int h1, h2;
  long long D;
  h1 = ((unsigned int) id) % H->size;
  h2 = 1 + ((unsigned int) (id >> 32)) % (H->size - 1);
  while ((D = H->h[h1]) != 0) {
    if (D == id) {
      return 1;
    }
    h1 += h2;
    if (h1 >= H->size) { h1 -= H->size; }
  }
  return 0;
}
