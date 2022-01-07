
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_decoder {int p; int size; } ;
struct interpolative_decoder_stack_entry {int dummy; } ;
typedef enum list_coding_type { ____Placeholder_list_coding_type } list_coding_type ;


 int HUFFMAN_MAX_CODE_LENGTH ;
 int assert (int ) ;
 int bsr (int) ;
 int get_max_possible_gap (int,int) ;






 int list_decoder_init (struct list_decoder*,int,int,unsigned char const*,int,int) ;
 int llrun_get_buckets_quantity (int ) ;
 struct list_decoder* zmalloc (int) ;

struct list_decoder *zmalloc_list_decoder (int N, int K, const unsigned char *start_ptr, enum list_coding_type tp, int prefix_bit_offset) {
  int p = 0, sz = sizeof (struct list_decoder);
  if (N == K) {
    tp = 133;
  }
  switch (tp) {
  case 132:
  case 133:
    break;
  case 131:
    sz += sizeof (struct interpolative_decoder_stack_entry) * (bsr (K+1) + 1);
    break;
  case 130:
    assert (0);
    break;
  case 129:
    p = llrun_get_buckets_quantity (get_max_possible_gap (N, K));
    sz += ((HUFFMAN_MAX_CODE_LENGTH + 1) + (p + 1) * (HUFFMAN_MAX_CODE_LENGTH + 1)) * sizeof (int);
    break;
  case 128:
    break;
  }
  struct list_decoder *dec = zmalloc (sz);
  dec->p = p;
  dec->size = sz;
  list_decoder_init (dec, N, K, start_ptr, tp, prefix_bit_offset);
  return dec;
}
