
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitreader {int dummy; } ;
struct list_decoder {int p; int M; int last; int * decode_int; scalar_t__ data; struct bitreader br; } ;


 scalar_t__ HUFFMAN_MAX_CODE_LENGTH ;
 int bread_huffman_codes (struct bitreader*,int*,int,int*) ;
 int canonical_huffman (int*,int,scalar_t__,scalar_t__,int *,scalar_t__) ;
 int llrun_decode_int ;
 int llrun_decode_int_single_bucket ;

__attribute__((used)) static void llrun_decoder_init (struct list_decoder *dec) {
  struct bitreader *br = &dec->br;
  int l[32], i, alphabet_size;
  bread_huffman_codes (br, l, dec->p, &alphabet_size);
  if (alphabet_size <= 1) {

    for (i = 0; i < dec->p; i++) {
      if (l[i]) {
        dec->M = i;
        break;
      }
    }
    dec->decode_int = &llrun_decode_int_single_bucket;
  } else {
    dec->M = -1;
    canonical_huffman (l, dec->p, HUFFMAN_MAX_CODE_LENGTH, dec->data, ((void*)0), dec->data + (HUFFMAN_MAX_CODE_LENGTH + 1));
    dec->decode_int = &llrun_decode_int;
  }
  dec->last = -1;
}
