
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int N; int K; int tp; int * decode_int; int k; int br; } ;
typedef enum list_coding_type { ____Placeholder_list_coding_type } list_coding_type ;


 int assert (int ) ;
 int bread_init (int *,unsigned char const*,int) ;
 int degenerate_decode_int ;
 int golomb_decoder_init (struct list_decoder*) ;
 int interpolative_decoder_init (struct list_decoder*) ;






 int list_too_short_for_llrun (int,int) ;
 int llrun_decoder_init (struct list_decoder*) ;
 int raw_int32_decoder_init (struct list_decoder*) ;

__attribute__((used)) static void list_decoder_init (struct list_decoder *dec, int N, int K, const unsigned char *start_ptr, enum list_coding_type tp, int prefix_bit_offset) {
  bread_init (&dec->br, start_ptr, prefix_bit_offset);
  dec->N = N;
  dec->K = K;
  dec->tp = tp;
  switch (tp) {
  case 132:
    golomb_decoder_init (dec);
    break;
  case 131:
    interpolative_decoder_init (dec);
    break;
  case 130:
    assert (0);
    break;
  case 129:
    if (list_too_short_for_llrun (N, K)) {
      dec->tp = 132;
      golomb_decoder_init (dec);
    } else {
      llrun_decoder_init (dec);
    }
    break;
  case 133:
    dec->k = 0;
    dec->decode_int = &degenerate_decode_int;
    break;
  case 128:
    raw_int32_decoder_init (dec);
    break;
  default:
    assert (0);
  }
}
