
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ word; } ;
typedef TYPE_1__ iheap_en_t ;
typedef scalar_t__ hash_t ;



iheap_en_t *iheap_word_bsearch (iheap_en_t *H, int n, hash_t word) {
  int a = -1, b = n;
  while (b - a > 1) {
    int c = ((a + b) >> 1);
    if (H[c].word <= word) { a = c; } else { b = c; }
  }
  if (a >= 0 && H[a].word == word) {
    return H + a;
  } else {
    return ((void*)0);
  }
}
