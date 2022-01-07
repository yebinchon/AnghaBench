
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int k; int K; int* L; int bw; int N; } ;
typedef int dyn_mark_t ;


 int HUFFMAN_MAX_CODE_LENGTH ;
 int assert (int) ;
 size_t bsr (int) ;
 int bwrite_huffman_codes (int *,int*,int) ;
 int bwrite_nbits (int *,int,int) ;
 int canonical_huffman (int*,int,int ,int*,int*,int*) ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int free (int*) ;
 int* get_huffman_codes_lengths (int*,int,int ,int*) ;
 int get_max_possible_gap (int ,int) ;
 int list_encode_nbits (struct list_encoder*,int,int) ;
 scalar_t__ llhuf_check_codes_lengths (int*,int) ;
 int llrun_get_buckets_quantity (int) ;
 int* zmalloc0 (int) ;

__attribute__((used)) static void llrun_encoder_finish (struct list_encoder *enc) {
  dyn_mark_t mrk;
  dyn_mark (mrk);
  assert (enc->k == enc->K);
  int max_gap = get_max_possible_gap (enc->N, enc->K);
  int nbuckets = llrun_get_buckets_quantity (max_gap);
  int *freq = zmalloc0 (nbuckets * sizeof (int));
  int last = -1, i;
  for (i = 0; i < enc->K; i++) {
    int d = enc->L[i] - last;
    assert (d > 0 && d <= max_gap);
    freq[bsr (d)]++;
    last = enc->L[i];
  }
  int alphabet_size, *l = get_huffman_codes_lengths (freq, nbuckets, HUFFMAN_MAX_CODE_LENGTH, &alphabet_size);
  assert (llhuf_check_codes_lengths (l, nbuckets) == 0);
  bwrite_huffman_codes (&enc->bw, l, nbuckets);
  const int single_symbol_in_alphabet = alphabet_size < 2;
  int firstcode[HUFFMAN_MAX_CODE_LENGTH+1], codeword[32], symbols[32 * (HUFFMAN_MAX_CODE_LENGTH + 1)];
  canonical_huffman (l, nbuckets, HUFFMAN_MAX_CODE_LENGTH, firstcode, codeword, symbols);
  last = -1;
  for (i = 0; i < enc->K; i++) {
    int d = enc->L[i] - last;
    assert (d > 0 && d <= max_gap);
    int o = bsr (d);
    assert (o >= 0 && o < nbuckets);
    if (!single_symbol_in_alphabet) {
      list_encode_nbits (enc, codeword[o], l[o]);
    }
    bwrite_nbits (&enc->bw, d ^ (1 << o), o);
    last = enc->L[i];
  }

  free (enc->L);
  dyn_release (mrk);
}
