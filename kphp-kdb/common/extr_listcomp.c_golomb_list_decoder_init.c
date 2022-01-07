
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int N; int K; int size; int tp; int * decode_int; scalar_t__ k; int br; } ;


 int bread_init (int *,unsigned char const*,int) ;
 int degenerate_decode_int ;
 int golomb_decoder_init (struct list_decoder*) ;
 int le_degenerate ;
 int le_golomb ;

void golomb_list_decoder_init (struct list_decoder *dec, int N, int K, const unsigned char *start_ptr, int prefix_bit_offset) {
  bread_init (&dec->br, start_ptr, prefix_bit_offset);
  dec->N = N;
  dec->K = K;
  dec->size = sizeof (struct list_decoder);
  if (K == N) {
    dec->tp = le_degenerate;
    dec->k = 0;
    dec->decode_int = &degenerate_decode_int;
  } else {
    dec->tp = le_golomb;
    golomb_decoder_init (dec);
  }
}
