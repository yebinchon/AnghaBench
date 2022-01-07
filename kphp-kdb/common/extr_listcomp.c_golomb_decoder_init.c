
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int M; int p; int k; int last; int * decode_int; int K; int N; } ;


 int bsr (int const) ;
 int compute_golomb_parameter (int ,int ) ;
 int golomb_decode_int_big_k ;
 int golomb_decode_int_small_k ;

__attribute__((used)) static void golomb_decoder_init (struct list_decoder *dec) {
  const int M = compute_golomb_parameter (dec->N, dec->K);
  dec->M = M;
  dec->p = (1 << (dec->k = bsr (M) + 1)) - M;
  dec->last = -1;
  dec->decode_int = dec->k > 1 ? &golomb_decode_int_big_k : &golomb_decode_int_small_k;
}
