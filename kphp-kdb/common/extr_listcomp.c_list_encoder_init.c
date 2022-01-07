
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int N; int K; int tp; int * encode_int; scalar_t__ k; int bw; } ;
typedef enum list_coding_type { ____Placeholder_list_coding_type } list_coding_type ;


 int assert (int ) ;
 int bwrite_init (int *,unsigned char*,unsigned char*,int) ;
 int degenerate_encode_int ;
 int golomb_encoder_init (struct list_encoder*) ;
 int interpolative_encoder_init (struct list_encoder*) ;
 int le_degenerate ;



 int list_too_short_for_llrun (int,int) ;
 int llrun_encoder_init (struct list_encoder*) ;

void list_encoder_init (struct list_encoder *enc, int N, int K, unsigned char *ptr, unsigned char *end_ptr, enum list_coding_type tp, int prefix_bit_offset) {
  bwrite_init (&enc->bw, ptr, end_ptr, prefix_bit_offset);
  enc->N = N;
  enc->K = K;
  if (N == K) {
    enc->tp = le_degenerate;
    enc->k = 0;
    enc->encode_int = &degenerate_encode_int;
    return;
  }
  enc->tp = tp;
  switch (tp) {
  case 130:
    golomb_encoder_init (enc);
    return;
  case 129:
    interpolative_encoder_init (enc);
    return;
  case 128:
    if (list_too_short_for_llrun (N, K)) {
      enc->tp = 130;
      golomb_encoder_init (enc);
    } else {
      llrun_encoder_init (enc);
    }
    return;
  default:
    assert (0);
  }
}
