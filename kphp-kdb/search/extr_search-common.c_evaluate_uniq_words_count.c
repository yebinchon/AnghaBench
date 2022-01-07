
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freqs; } ;
typedef TYPE_1__ pair_word_freqs_t ;



unsigned evaluate_uniq_words_count (pair_word_freqs_t *Q, int n) {
  int i;
  unsigned r = 0;
  for (i = 0; i < n; i++) {
    if (Q[i].freqs >= 0x10000) {
      r += 0x10000;
    }
    if (Q[i].freqs) {
      r++;
    }
  }
  return r;
}
