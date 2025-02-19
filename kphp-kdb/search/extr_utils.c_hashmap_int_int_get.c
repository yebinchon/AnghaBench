
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashmap_int_int {unsigned int size; TYPE_1__* h; } ;
struct TYPE_2__ {int key; } ;



int hashmap_int_int_get (struct hashmap_int_int *H, int id, int *p_slot_idx) {
  int h1, h2, D;
  h1 = ((unsigned int) id) % H->size;
  h2 = 1 + ((unsigned int) id) % (H->size - 1);
  while ((D = H->h[h1].key) != 0) {
    if (D == id) {
      *p_slot_idx = h1;
      return 1;
    }
    h1 += h2;
    if (h1 >= H->size) { h1 -= H->size; }
  }
  *p_slot_idx = h1;
  return 0;
}
