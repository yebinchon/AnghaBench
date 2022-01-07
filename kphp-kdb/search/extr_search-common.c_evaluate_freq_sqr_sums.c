
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freqs; } ;
typedef TYPE_1__ pair_word_freqs_t ;



void evaluate_freq_sqr_sums (pair_word_freqs_t *Q, int n, unsigned *sum_sqr_freq_title, unsigned *sum_freq_title_freq_text, unsigned *sum_sqr_freq_text) {
  int i;
  *sum_sqr_freq_title = *sum_freq_title_freq_text = *sum_sqr_freq_text = 0;
  for (i = 0; i < n; i++) {
    unsigned freq_title = Q[i].freqs >> 16, freq_text = Q[i].freqs & 0xffff;
    *sum_sqr_freq_title += freq_title * freq_title;
    *sum_freq_title_freq_text += freq_title * freq_text;
    *sum_sqr_freq_text += freq_text * freq_text;
  }
}
